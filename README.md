# README
[Link to live demo](https://goreads.herokuapp.com/)

Go Read was inspired by Goodreads and was developed as a tool to supplement the reading experience. It was built with a Rails/PostgreSQL on the backend and React.js/Redux frontend.

Go Read was designed and executed in eight days in an effort apply and cement the skills I learned in the App Academy core curriculum.

##Concept
The goal of the Go Read project is to provide the user with an easy means to record books they've read as well as encourage them to read more by helping them discover new books, and provide motivation to read more.

Where Go Read seeks to differentiate itself from Goodreads however is in its simple site design. Goodreads barrages the user with so many features that it makes it difficult for the user to navigate the site and very difficult for new users to learn to use the site.

##Technologies
In deference to the short time frame available, Rails was selected to build the backend of this project and Heroku was selected as the web host.

The Frontend Redux state was configured with separate action creators and reducers for sessions, books, shelves, and reviews to normalize the project state and reduce redundant data transmission throughout the site.

##Features
* User authentication is secured with the ruby BCrypt gem
* Account creation is not a prerequisite for site navigation
* Users are only prompted to signup or login if they wish to persist changes such as creating a shelf or marking a book as read.
* Go read emphasizes single page design and uses a modal element to display individual books with enriched details rather than redirecting users to a new page for every book.
* Users can create shelves organize books they are interested in.
* Users can add and remove books from shelves in their collection
* Users can leave reviews on books to keep track of their thoughts on a book.

##
