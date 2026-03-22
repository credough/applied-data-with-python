from extract import extract
from transform import transform
from load import load

def main():
    df_books = extract("11_books_authors_etl/books.csv")
    df_authors = extract("11_books_authors_etl/authors.csv")

    df = transform(df_books, df_authors)

    load(df, "authors_books.sqlite", "book_authors")

    #bestseller and highly rated books
    print("[SUMMARY] Bestseller and highly rated books\n")
    print(df[(df["is_best_seller"] == True) & (df["is_highly_rated"] == True)][
        ["isbn", "title", "author_name", "rating", "price", "value_score", "commercial_success"]
    ])
    #recent publications from veteran authors
    print("[SUMMARY] Recent publications from veteran authors\n")
    print(df[(df["is_recent_publication"] == True) & (df["is_veteran"] == True)][
        ["isbn", "title", "author_name", "rating", "price", "value_score", "commercial_success"]
    ])
    #masterpiece books that are overpriced
    print("[SUMMARY] Masterpiece books that are overpriced\n")
    print(df[(df["commercial_success"] == "Bestseller") & (df["value_score"] == "Overpriced")][
        ["isbn", "title", "author_name", "rating", "price", "value_score", "commercial_success"]
    ])

if __name__ == "__main__":
    main()