import pandas as pd

def transform(df_authors, df_books):
    df = df_books.merge(df_authors, on="author_id", how="left")
    print(f"Rows loaded after merge: {len(df)}")

    df["birth_date"] = pd.to_datetime(df["birth_date"])
    df["debut_date"] = pd.to_datetime(df["debut_date"])
    df["publish_date"] = pd.to_datetime(df["publish_date"])

    df["publish_year"] = df["publish_date"].dt.year
    df["publish_month"] = df["publish_date"].dt.month_name()

    current = pd.Timestamp("2024-12-31")
    df["years_since_publication"] = ((current - df["publish_date"]).dt.days / 365).round(1)

    df["author_age_at_publish"] = ((df["publish_date"]- df["birth_date"]).dt.days/365).round(1)

    def book_length(pages):
        if pages < 100:
            return "Novella"
        elif pages < 300:
            return "Short"
        elif pages < 500:
            return "Standard"
        elif pages < 700:
            return "Long"
        else:
            return "epic"
        
    df["book_length"] = df["pages"].apply(book_length)

    def rating_tier(rating):
        if rating >= 4.5:
            return "Masterpiece"
        elif rating >= 3.5:
            return "Highly Rated"
        elif rating >= 2.5:
            return "Average"
        elif rating >= 1.5:
            return "Below Average"
        else:
            return "Poor"

    df["rating_tier"] = df["rating"].apply(rating_tier)

    def comm_success(row):
        revenue = row["price"] * row["copies_sold"]

        if revenue >= 5000000:
            return "Bestseller"
        elif revenue >= 1000000:
            return "Strong Seller"
        elif revenue >= 100000:
            return "Moderate Seller"
        else:
            return "Low Seller"

    df["commercial_success"] = df.apply(comm_success, axis=1)

    def value_score(row):
        if row["price"] == 0:
            return 0
        score = (row["rating"] / row["price"]) * 1000
        if score >= 3:
            return "Excellent Value"
        elif score >= 1:
            return "Good Value"
        else:
            return "Overpriced"
    
    df["value_score"] = df.apply(value_score, axis=1)

    df["is_best_seller"] = df["commercial_success"] == "Bestseller"
    df["is_highly_rated"] = df["rating"] >= 3.5
    df["is_veteran"] = df["books_published"] >= 20
    df["is_recent_publication"] = df["years_since_publication"] <= 5

    df = df[df["status_y"] == "published"]

    return df