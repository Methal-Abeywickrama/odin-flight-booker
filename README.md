Flight Booker
Ruby on Rails Course Project
Introduction
Welcome to the Flight Booker project! This project is designed to give you hands-on experience with more advanced form handling in Ruby on Rails. You'll build a simplified version of a flight booking system, focusing on the first three steps of a typical checkout process for booking a one-way flight.

Project Overview
The Flight Booker application will guide users through the initial steps of booking a flight, including searching for available flights, selecting a flight, and entering passenger information. This project is a part of the Ruby on Rails course and aims to enhance your skills in form handling, validations, and user flow management.

Features
Search Flights:

Users can enter desired travel dates and departure/arrival airports.
The system will display a list of available flights based on the search criteria.
Select a Flight:

Users can choose from the list of available flights.
The selected flight details will be carried forward to the next steps.
Enter Passenger Information:

Users can enter information for all passengers.
The form will include fields for names, ages, and other necessary details.
Enter Billing Information (Not Implemented in this Project):

In a complete system, users would enter their billing information.
For this project, the focus is on the initial steps up to entering passenger details.
Getting Started
Prerequisites
Ruby (version 2.7 or later)
Ruby on Rails (version 6.0 or later)
PostgreSQL (recommended) or SQLite
Installation
Clone the Repository:

sh
Copy code
git clone https://github.com/yourusername/flight-booker.git
cd flight-booker
Install Dependencies:

sh
Copy code
bundle install
Set Up the Database:

sh
Copy code
rails db:create
rails db:migrate
Run the Server:

sh
Copy code
rails server
Access the Application:
Open your web browser and navigate to http://localhost:3000.

Usage
Search Flights:

Navigate to the flight search page.
Enter your travel dates and departure/arrival airports.
Click on the "Search" button to view available flights.
Select a Flight:

Browse through the list of available flights.
Click on "Select" next to the desired flight.
Enter Passenger Information:

Fill in the form with passenger details.
Click "Continue" to proceed.
Project Structure
app/models: Contains the models for the application.
app/controllers: Contains the controllers for handling requests and responses.
app/views: Contains the view templates for rendering the user interface.
config: Contains configuration files for the application.
db: Contains database migrations and schema files.
Contributing
Contributions are welcome! If you'd like to contribute to this project, please follow these steps:

Fork the repository.
Create a new branch (git checkout -b feature-branch).
Make your changes and commit them (git commit -am 'Add new feature').
Push to the branch (git push origin feature-branch).
Create a new Pull Request.
License
This project is licensed under the MIT License. See the LICENSE file for more details.

Acknowledgements
This project is part of the Ruby on Rails course. Special thanks to the course instructors and the community for their support and guidance.

Happy coding! If you have any questions or need further assistance, feel free to open an issue or contact the repository owner.

Note: This README provides an overview of the initial steps of the Flight Booker application. Future iterations may include additional steps such as billing information and payment processing. Stay tuned for updates!