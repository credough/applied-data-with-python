from extract import extract
from transform import transform
from load import load

def main():
    df_books = extract("11_books_authors_etl/books.csv")
    df_authors = extract("11_books_authors_etl/authors.csv")

    df = transform(df_books, df_authors)

    load(df, "authors_books.sqlite", "book_authors")

    print("\nBestseller and highly rated books:")
    print(df[(df["is_bestseller"] == True) & (df["is_highly_rated"] == True)][
        ["isbn", "title", "author_name", "rating", "copies_sold", "commercial_success", "rating_tier"]
    ])
 
    print("\nRecent books from veteran authors:")
    print(df[(df["is_recent_publication"] == True) & (df["is_veteran_author"] == True)][
        ["isbn", "title", "author_name", "books_published", "publish_year", "rating_tier"]
    ])
 
    print("\nMasterpiece books that are overpriced:")
    print(df[(df["rating_tier"] == "Masterpiece") & (df["value_score"] == "Overpriced")][
        ["isbn", "title", "author_name", "rating", "price", "value_score", "commercial_success"]
    ])

if __name__ == "__main__":
    main()