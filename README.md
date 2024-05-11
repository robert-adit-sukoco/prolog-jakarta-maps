<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/robert-adit-sukoco/prolog-jakarta-maps">
    <img src="images/Logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Prolog Jakarta Maps</h3>

  <p align="center">
    Jakarta pathfinding in Prolog
    <br />
    <a href="https://github.com/robert-adit-sukoco/prolog-jakarta-maps"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/robert-adit-sukoco/prolog-jakarta-maps">View Demo</a>
    ·
    <a href="https://github.com/robert-adit-sukoco/prolog-jakarta-maps/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    ·
    <a href="https://github.com/robert-adit-sukoco/prolog-jakarta-maps/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>



<!-- ABOUT THE PROJECT -->
## About The Project

"Prolog Jakarta Maps" is a project that is made as a mandatory final project for Prolog course in <em>Fasilkom UI</em> (Faculty of Computer Science, <em>Universitas Indonesia</em>). This project aims to demonstrate the implementation of pathfinding algorithm in Prolog, specifically Depth First Search. 

### Developers
* <a href="https://github.com/robert-adit-sukoco">Robertus Aditya Sukoco</a>

### Built With

* Prolog

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

* Install Prolog. More details in <a href="https://wwu-pi.github.io/tutorials/lectures/lsp/010_install_swi_prolog.html">this page</a>.
* Run `swipl` in your Terminal / Command Prompt to enter the SWIPL terminal.
* Consult the `main.pl` file in the SWIPL terminal.
```pl
?- consult('main.pl').
true.
```
* Here's an example basic command.
```pl
?- get_shortest_route_plan('Ancol', 'Cengkareng', Path, Duration).
Path = ['Ancol', 'Pantai Indah Kapuk', 'Cengkareng'],
Duration = 44 ;
```
* See more features below.


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Features

### Get Shortest Path

```pl
?- get_shortest_route_plan('Ancol', 'Cengkareng', Path, Duration).
Path = ['Ancol', 'Pantai Indah Kapuk', 'Cengkareng'],
Duration = 44 ;
```
The main feature. `Path` is to show the path of regions taken, `Duration` is how long it takes to go from region `A` to `B` in minutes. The pathfinding behavior may be altered with additional traffic jam data and vehicle mode, see the features below for more details.
### Vehicle Mode
```pl
?- show_current_vehicle_mode.
Current vehicle mode is motorbike
true.

?- change_vehicle_mode.
Vehicle mode switched to car
true.

?- show_current_vehicle_mode.
Current vehicle mode is car
true.
```
Vehicle mode defines whether the program would go through toll roads or not. If the vehicle mode is car, going through toll roads is allowed (In Indonesia, motorbikes are not allowed to go through toll roads).

### Traffic Jam "Database"

("Macet" is the word for "traffic jam" in Bahasa Indonesia)
```pl
?- get_shortest_route_plan('Ancol', 'Cengkareng', Path, Duration).
Path = ['Ancol', 'Pantai Indah Kapuk', 'Cengkareng'],
Duration = 44.

?- add_macet('Cengkareng', 'Pantai Indah Kapuk', 10).
true.

?- get_shortest_route_plan('Ancol', 'Cengkareng', Path, Duration).
Path = ['Ancol', 'Pantai Indah Kapuk', 'Cengkareng'],
Duration = 54.

% Continue to the next example below
```
The predicate `add_macet(A, B, AdditionalDuration)` adds an information about the traffic jam condition, which adds the duration from region `A` to region `B` (and the other way around) by the `AdditionalDuration` parameter. So the total duration of region `A` to region `B` is `BaseDuration + AdditionalDuration` (Note: `BaseDuration` is predefined, see `routes.pl` for routing data).

The traffic jam information can be retracted using the `retract_macet(A, B)` predicate. See this example:
```pl
% Omitted from above

?- get_shortest_route_plan('Ancol', 'Cengkareng', Path, Duration).
Path = ['Ancol', 'Pantai Indah Kapuk', 'Cengkareng'],
Duration = 54.

?- retract_macet('Cengkareng', 'Pantai Indah Kapuk').
true.

?- get_shortest_route_plan('Ancol', 'Cengkareng', Path, Duration).
Path = ['Ancol', 'Pantai Indah Kapuk', 'Cengkareng'],
Duration = 44.
```

### List of Available Regions
- Ancol
- Pantai Indah Kapuk
- Cengkareng
- Mangga Besar
- Kota Tua
- Sunter


### List of Available Toll Gates
- GT PIK
- GT Ancol
- GT Puri
- GT Slipi
- GT Sudirman
- GT Pancoran
- GT Cempaka Putih
- GT Lebak Bulus
- GT Cilandak
- GT Antam
- GT Pasar Rebo

Note: "GT" stands for "Gerbang Tol", which translates to "Toll Gate"

See the [open issues](https://github.com/robert-adit-sukoco/prolog-jakarta-maps/issues) for a full list of proposed features (and known issues).





<br />
<br />
<br />

<!-- ACKNOWLEDGMENTS -->
# Disclaimer

* The map data included in our program might not be 100% accurate with the real life Jakarta map. Real life usage of this project is not advised.
* The map is bidirectional, unlike real world maps. Meaning the path and duration from A to B and from B to A will always be the same.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


