# Test task

This is a Ruby on Rails application for a person who has details with using turbo

## Features

- We are showing all the person's name
- When we click on any name you can show its details without refreshing the page

## Prerequisites

Make sure you have the following installed on your system:

- Ruby (version 3.0.0)
- Rails (version 7.1.3)
- SQLite
- Node (version > 18)
- Yarn (version 1.22.21)
## Installation

To run this project locally, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/AJAYJAITWAL/marketcircle_task.git

2. Navigate to the project directory
   ```bash
   cd marketcircle_task

3. Install dependencies
   ```bash
   bundle install

5. Set up the database (Set Postgres username and password in the database.yml file if needed)
   ```bash
   rails db:create
   rails db:migrate

6. You need to import the data.json file
    ```bash
    rails import:data

7. Start the server
   ```bash
   rails server

7. Visit http://localhost:3000 in your web browser to access the application.

8. Run Rspec
   ```bash
    rails test

9. End points
  ```bash
    http://localhost:3000/people with GET request
    http://localhost:3000/people with POST request


   
