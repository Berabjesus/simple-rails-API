# A simple rails RESTapi for Articles

> This is a small and simple rails RESTapi that fetches article content from a postgres database. It is done for impelmentation purposes.

## Built With

- Ruby v2.7.1
- Ruby on Rails v5.2.4

## Getting Started

To get a local copy up and running follow these simple example steps.

### Setup and Configuration

- Go to the root of the local folder of this project.
- Open the database.yml in the config folder and make user you have your postgresql username on line 20 (the default is postgres). uncomment line 20.
- open a CLI tool and ```bundle```
- On the CLI tool run ```rails db:create```
- After the database creation run ```rails db:migrate```
- Next run ```rails db:seed``` to generate and store random article contents. This will populate the database with article contents
- User Postman(recommanded) or the search bar of the browser and run ```http://localhost:3000/api/v1/articles``` for the full JSON     response or ```http://localhost:3000/api/v1/articles/1``` for single content by its id.


# By

👤 **Bereket Beshane**

- Github: [@berabjesus](https://github.com/Berabjesus)
- Twitter: [@bereket_ababu_b](https://twitter.com/bereket_ababu_b)
- Linkedin: [linkedin](https://www.linkedin.com/in/bereket-beshane-a1b75a1a9/)
