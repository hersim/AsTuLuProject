USE Astulus;
GO

/* First step: drop constraints*/
ALTER TABLE Book DROP CONSTRAINT FKCategoryBook;
GO

ALTER TABLE BookByEditor DROP CONSTRAINT FKBookToEditor;
ALTER TABLE BookByEditor DROP CONSTRAINT FKEditorToBook;
GO

ALTER TABLE AuthorByBook DROP CONSTRAINT FKBookAuthor;
ALTER TABLE AuthorByBook DROP CONSTRAINT FKAuthorBook;
GO

ALTER TABLE Review DROP CONSTRAINT FKReviewBook;
ALTER TABLE Review DROP CONSTRAINT FKReviewUser;
GO

ALTER TABLE Comment DROP CONSTRAINT FKCommentUser;
ALTER TABLE Comment DROP CONSTRAINT FKCommentReview;
GO

ALTER TABLE SubCategory DROP CONSTRAINT FKSubCategoryCategory;
GO

ALTER TABLE BookByUser DROP CONSTRAINT FKBookToUser;
ALTER TABLE BookByUser DROP CONSTRAINT FKUserToBook;
GO

ALTER TABLE UserFavorites DROP CONSTRAINT FKFavUser;
GO

/* Second step: drop tables*/
DROP TABLE Book;
DROP TABLE Editor;
DROP TABLE Category;
DROP TABLE SubCategory;
DROP TABLE Review;
DROP TABLE Comment;
DROP TABLE UserAccount;
DROP TABLE BookByUser;
DROP TABLE BookByEditor;
DROP TABLE Author;
DROP TABLE AuthorByBook;
DROP TABLE UserFavorites;
GO

/* Third step: create tables*/
CREATE TABLE Book
(
	BookID INT NOT NULL  IDENTITY,
	BookName VARCHAR(200) NOT NULL ,
	BookNumber INT,
	BookCollection VARCHAR(100),
	ISBN VARCHAR(30),
	BookSerie VARCHAR(100),
	BookLanguage INT NOT NULL ,
	PageNumber INT NOT NULL ,
	PublishedYear INT,
	DateAdded Date NOT NULL  DEFAULT GETDATE(),
	Score INT NOT NULL  DEFAULT 0,
	TimesConsulted INT NOT NULL  DEFAULT 0,
	IsTranslated bit,
	BookStatus INT NOT NULL  DEFAULT 0,
	CategoryID INT NOT NULL,
	UserID INT,
);
GO

CREATE TABLE Author
(
	AuthorID INT NOT NULL IDENTITY,
	Name Varchar(100) NOT NULL,
	DateAdded DATETIME NOT NULL DEFAULT GETDATE(),
	Score INT NOT NULL DEFAULT 0,
	TimesConsulted INT NOT NULL DEFAULT 0,
	LastTimeChecked DATETIME
);
GO

CREATE TABLE AuthorByBook
(
	AuthorByBookID INT NOT NULL IDENTITY,
	BookID INT NOT NULL,
	AuthorID INT NOT NULL
);
GO

CREATE TABLE BookByUser
(
	BookByUserID INT NOT NULL  IDENTITY,
	BookID INT NOT NULL ,
	UserID INT NOT NULL ,
	LikeState INT,
	DateCreated DATE NOT NULL  DEFAULT GETDATE(),
	DateModified DATE
);
GO

CREATE TABLE Editor
(
	EditorID INT NOT NULL  IDENTITY,
	EditorName VARCHAR(200) NOT NULL ,
	DateCreated DATETIME,
	EditorScore INT NOT NULL  DEFAULT 0,
	DateAdded Date NOT NULL  DEFAULT GETDATE(),
	TimeEditorConsulted INT NOT NULL  DEFAULT 0,
);
GO

CREATE TABLE BookByEditor
(
	BookByEditorId INT NOT NULL  IDENTITY,
	BookID INT NOT NULL,
	EditorID INT NOT NULL 
);
GO

CREATE TABLE Category
(
	CategoryID INT NOT NULL  IDENTITY,
	CategoryName Varchar(100) NOT NULL ,
	TimesCategoryConsulted INT NOT NULL  DEFAULT 0,
	DateAdded Date NOT NULL  DEFAULT GETDATE(),
);
GO

CREATE TABLE SubCategory
(
	SubCategoryID INT NOT NULL  IDENTITY,
	SubCategoryName Varchar(100),
	CategoryID INT NOT NULL ,
	TimesSubCatConsulted INT NOT NULL  DEFAULT 0,
	DateAdded Date NOT NULL  DEFAULT GETDATE(),
);
GO

CREATE TABLE Review
(
	ReviewID INT NOT NULL IDENTITY,
	ReviewText TEXT NOT NULL ,
	AccountID INT NOT NULL ,
	BookID INT NOT NULL ,
	ReviewScore INT NOT NULL  DEFAULT 0,
	DateAdded Date NOT NULL  DEFAULT GETDATE(),
);
GO

CREATE TABLE UserAccount
(
	AccountID INT NOT NULL  IDENTITY,
	DateCreated DATETIME NOT NULL  DEFAULT GetDate(),
	DateLastLog DATETIME,
	UserAccountName Varchar(100),
	AccountScore INT NOT NULL  DEFAULT 0,
	Reputation Varchar(50),
	UserID INT,
	UserFavoritesID INT,
);

CREATE TABLE Comment
(
	CommentID INT NOT NULL  IDENTITY,
	CommentText Varchar(140) NOT NULL ,
	AccountID INT NOT NULL ,
	ReviewID INT NOT NULL ,
	DateAdded Date NOT NULL  DEFAULT GETDATE(),
);
GO

CREATE TABLE UserFavorites
(
	UserFavoritesID INT NOT NULL IDENTITY,
	BookID INT NOT NULL,
	UserID INT NOT NULL,
	DateAdded DATETIME NOT NULL DEFAULT GETDATE()
);
GO

/* Fourth step: add primary keys*/
--Book
ALTER TABLE Book ADD PRIMARY KEY (BookID)
GO 

--Editor
ALTER TABLE Editor ADD PRIMARY KEY (EditorID)
GO

--Category
ALTER TABLE Category ADD PRIMARY KEY (CategoryID)
GO

--SubCategory
ALTER TABLE SubCategory ADD PRIMARY KEY (SubCategoryID)
GO

--Review
ALTER TABLE Review ADD PRIMARY KEY (ReviewID)
GO

ALTER TABLE BookByUser ADD PRIMARY KEY (BookByUserID)
GO

--Comment
ALTER TABLE Comment ADD PRIMARY KEY (CommentID)
GO

ALTER TABLE UserAccount ADD PRIMARY KEY (AccountID)
GO

ALTER TABLE BookByEditor ADD PRIMARY KEY (BookByEditorId)
GO

ALTER TABLE Author ADD PRIMARY KEY (AuthorID)
GO

ALTER TABLE AuthorByBook ADD PRIMARY KEY (AuthorByBookID)
GO

ALTER TABLE UserFavorites ADD PRIMARY KEY (UserFavoritesID)
GO

/* Fifth step: add foreign keys*/
ALTER TABLE Book ADD CONSTRAINT FKCategoryBook FOREIGN KEY(CategoryID) REFERENCES Category(CategoryID);
GO

ALTER TABLE Review ADD CONSTRAINT FKReviewBook FOREIGN KEY (BookID) REFERENCES Book(BookID);
ALTER TABLE Review ADD CONSTRAINT FKReviewUser FOREIGN KEY (AccountID) REFERENCES UserAccount(AccountID);
GO

ALTER TABLE Comment ADD CONSTRAINT FKCommentUser FOREIGN KEY (AccountID) REFERENCES UserAccount(AccountID);
ALTER TABLE Comment ADD CONSTRAINT FKCommentReview FOREIGN KEY (ReviewID) REFERENCES Review(ReviewID);
GO

ALTER TABLE SubCategory ADD CONSTRAINT FKSubCategoryCategory FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID);
GO

ALTER TABLE BookByUser ADD CONSTRAINT FKBookToUser FOREIGN KEY (BookID) REFERENCES Book(BookID);
ALTER TABLE BookByUser ADD CONSTRAINT FKUserToBook FOREIGN KEY (UserID) REFERENCES UserAccount(AccountID);
GO

ALTER TABLE BookByEditor ADD CONSTRAINT FKBookToEditor FOREIGN KEY(BookID) REFERENCES Book(BookID);
ALTER TABLE BookByEditor ADD CONSTRAINT FKEditorToBook FOREIGN KEY(EditorID) REFERENCES Editor(EditorID);
GO

ALTER TABLE AuthorByBook ADD CONSTRAINT FKBookAuthor FOREIGN KEY(BookID) REFERENCES Book(BookID);
ALTER TABLE AuthorByBook ADD CONSTRAINT FKAuthorBook FOREIGN KEY(AuthorID) REFERENCES Author(AuthorID);
GO

ALTER TABLE UserFavorites ADD CONSTRAINT FKFavUser FOREIGN KEY(UserID) REFERENCES UserAccount(AccountID);
GO