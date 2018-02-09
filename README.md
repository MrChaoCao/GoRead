# README
[Link to live demo](https://goreads.herokuapp.com/)

Go Read was inspired by Goodreads and was developed as a tool to supplement the reading experience. It was built with a Rails/PostgreSQL on the backend and React.js/Redux frontend.

Go Read was designed and executed in eight days in an effort apply and cement the skills I learned in the App Academy core curriculum.

## Concept
The goal of the Go Read project is to provide the user with an easy means to record books they've read as well as encourage them to read more by helping them discover new books, and provide motivation to read more.

Where Go Read seeks to differentiate itself from Goodreads however is in its simple site design. Goodreads barrages the user with so many features that it makes it difficult for the user to navigate the site and very difficult for new users to learn to use the site.

## Technologies
In deference to the short time frame available, Rails was selected to build the backend of this project and Heroku was selected as the web host.

The Frontend Redux state was configured with separate action creators and reducers for sessions, books, shelves, and reviews to normalize the project state and reduce redundant data transmission throughout the site.

## Features
* User authentication is secured with the ruby BCrypt gem
* Account creation is not a prerequisite for site navigation
* Users are only prompted to signup or login if they wish to persist changes such as creating a shelf or marking a book as read.
* Go read emphasizes single page design and uses a modal element to display individual books with enriched details rather than redirecting users to a new page for every book.

## Minimalist Design
In an effort to simplify browsing Go Read shows the user all available books upon navigation to the page.
(https://imgur.com/G4EwZyn)

The user is free to navigate the site without logging in until they attempt to do something which persists to the database.

Rather than interrupt site navigation with redirects to new pages Go Read displays the majority of its content directly on the root page and displays a modal with
(https://imgur.com/HIGlreh)

## Implementation highlights
To improve the user experience the login option is immediately available to the user upon navigation to the site and is removed upon logout.

```
const sessionLinks = () => (
  <div className="nav-bar">
    <nav className="nav-right">
      <SigninContainer/>
      <SignupModalContainer/>
    </nav>

    <nav className="nav-general">

    </nav>
  </div>
);

const userIcons = (currentUser, logout) => (
	<nav className="nav-right">
    <h2 className="header-name"> Hello, {currentUser.username}</h2>
    <button className="header-button" onClick={logout}>Log Out</button>
	</nav>
);

const Navbar = ({ currentUser, logout }) => (
  currentUser ? userIcons(currentUser, logout) : sessionLinks()
);
```

## Planned Future Features
* Shelves: Users will be able to sort books into shelves to help manage books they are interested in.
* Authors and Tags: Books will have authors and tags added to assist the user in finding new books to read.
* Book Status: Users will be able to mark books as read or as favorites.
* Reviews: Users will be able to leave reviews and read reviews from other users.
* Search: Users will be able to search for individual books instead of having to find them visually.
* Content sorting: users will be able to sort books in the database by title, author, publish date, and popularity
* User connections: users will be able to interact with other users on the site
* Book club: users will be able to group together to form book clubs to encourage each other to read and to discuss books.
* Jólabókaflóð: the icelandic book holiday, literally "book flood". Users will be able to form groups and buy/mail each other books.
