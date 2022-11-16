![](https://img.shields.io/badge/Microverse-blueviolet)

# Finanz App

> The Finanz App is a mobile-focused web application where you can manage your expenses: you have a list of expenses associated with a category, and this allows you see how much money you have spent. Credit to [Gregoire Vella on Behance](https://www.behance.net/gregoirevella), the original designer of the template used as a guide.

## Built With

- Ruby on Rails 7.x
- Postgresql
- Bootstap

## Video Describing the project features
[link to video](https://www.loom.com/share/d7a637515f6049ff966fcefddea2c18a)

## Live Demo
[Live project link](https://financiaaal.herokuapp.com/)


## Install & Setup

#### To setup and install this project, follow the below steps:

- Clone this project by the command:

`git clone https://github.com/Abdullah2213565/budget-app.git`

- Then switch to the project folder by the bellow query:

`cd budget-app`

-Install the required dependecies with:

`bundle install`

-Install npm dependencies with:

`npm install`

- Before running below commands update config/database.yml with your local DBcredentials. Then run:

`rake db:create`

`rake db:migrate`


- To make the tailwindcss works run the below command:
    `bundle exec rake assets:precompile`


- With Ruby on Rails and PostgreSQL installed in your environment, you can run rails server to run the website.


### Run tests

- Run bundle install
- Run bundle exec rspec spec

### Prerequisites

- IDE to edit and run the code (We use Visual Studio Code 🔥).
- Git to versionning your work.
- Postgresql

## Authors

👤 **Abdullah Khan**

| 👤 Name | Github | Twitter | LinkedIn |
|------|--------|---------|----------|
|Abdullah Asghar|[@Abdullah](https://github.com/Abdullah2213565)|[@Abdullah](https://twitter.com/dulakhan024)|[@AbdullahKhan](https://www.linkedin.com/in/abdullah-khan2002/)|



## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- A huge credit goes to [Gregoire Vella on Behance](https://www.behance.net/gregoirevella), the original designer of the template used as a guide.

## 📝 License

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._