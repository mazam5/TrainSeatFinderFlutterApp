# Train Seat Finder

## Table of Contents

- [Description](#description)
- [Demo](#demo)
- [Screenshots](#screenshots)
- [Methodology](#methodology)
- [Installation](#installation)
- [Usage](#usage)
- [Author](#author)

## Description

This is a simple hybrid application that is developed using Flutter Framework.
This app allows users to find the seat on a train bogey based on their ticket number.

## Demo

https://github.com/mazam5/TrainSeatFinderFlutterApp/assets/33384508/e8894ec7-0f41-4087-a345-ab31d3162e51

<video width="320" height="240" controls>
  <source src="/demo/demo.mp4" type="video/mp4">
</video>

## Screenshots

<table>
   <tr>
      <td>Initial Screen</td>
      <td>Searching for seat</td>
      <td>Seat found</td>
   </tr>
  <tr>
    <td><img src="screenshots/1.png" alt="Image 1"></td>
    <td><img src="screenshots/2.png" alt="Image 2"></td>
    <td><img src="screenshots/3.png" alt="Image 3"></td>
  </tr>
</table>

## Methodology

Build a simple UI with a TextFormField and a ElevatedButton widget. When the user enters a seat number and clicks on the button, the seat with the entered number and it shows a green colored box.

Widget used:

- SeatFinderWidget (StatefulWidget) - This widget contains Search widget and a SizedBox. When the user clicks on the button, the seat number is passed to the AllSeatsWidget to find the seat.

- SearchWidget (StatefulWidget) - This widget contains a TextFormField and a ElevatedButton widget. When the user clicks on the button, the seat number is passed to the AllSeatsWidget to find the seat.

- AllSeatsWidget (StatefulWidget) - This widget contains a ListView widget which displays the outlines of the seats.

- SeatTile (StatelessWidget) - This widget defines the UI of the seat. It contains a Container widget with a Text widget inside it.

## Installation

#### Prerequisites

- Flutter SDK
- Android Studio
- Visual Studio Code

1. Clone the repository

   ```
   git clone https://github.com/mazam5/TrainSeatFinderFlutterApp
   ```

2. Run below command to install flutter packages

   ```
   flutter pub get
   ```

3. Run to start the application

   ```
   flutter run
   ```

## Usage

1. Enter the seat number
2. Click on the `Find` button
3. The seat number will be displayed

## Author

- [Mohammed Azam](https://www.linkedin.com/in/azam5/)
