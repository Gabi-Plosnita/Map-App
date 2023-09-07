# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.5.6] - 2023-09-06
### Added

- Content Store: Map Styles, Human Voices, Offline Maps
- Weather Service: Current Forecast, Hourly Forecast, Daily Forecast
- New map gesture: Long Press
- Recorder: Record route, export as .GPX
- SDK Settings: Unit System, Language, Set Navigation Voice, Allow Offboard Service on Charged Network
- Map Details: Get Country Flag by ISO code
- Map Styles: Apply Map Style, Get Current Map Style

### Changed

- SDK Settings methods are now static and non-async

### Fixed

- Fixed an issue where screen rotate on Android would cause loss of connection to SDK

## [1.5.2] - 2023-08-09
### Added

- Draw route
- Route preferences
- Route profile sections: Surfaces, Road types, Climb
- Route path
- WGS to screen coordinates converter

### Changed

- Modified Landmark to use direct FFI calls for getters.
- Bug fixing and improvements

## [1.5.1] - 2023-08-01
### Changed

- Bug fixing and improvements

## [1.5.0] - 2023-07-25
### Added

- Distance between 2 coordinates
- Image for landmarks
- Landmark selection on map
- `SearchService`: `searchInArea` & `searchAroundPosition`
- Route segments & route instructions
- `MapViewRouteCollection` methods
- Center camera on routes
- Abstract geometry image for navigation instructions
- Navigation events callback: new instruction, waypoint reached & destination reached
- Voice instructions with text-to-speech
- Animations for center camera on coordinates & follow position
- `PositionService`
- Follow position enter/exit events
- `LandmarkStoreContent`: custom stores
- `LandmarkStoreContent`: add, remove & contains methods

## [1.4.6] - 2023-07-22
### Changed

- Bug fixing and improvements

## [1.4.5] - 2023-07-18
### Changed

- Bug fixing and improvements

## [1.4.0] - 2023-07-13
### Added

- Start navigation simulation on route
- Cancel navigation
- Start follow position (for simulation only)
- Navigation instruction callback
- Landmark image
- Abstract geometry for navigation instructions
- Route time and distance

## [1.3.0] - 2023-07-07
### Added

- Activate highlight
- Deactivate highlight
- Route calculation
- Cancel route calculation
- Center camera on route

## [1.2.0] - 2023-07-05
### Added 

- ExtraInfo field containing result distance, type, native name and English name

### Fixed 
- Search working on Android and IOS

## [1.1.0] - 2023-07-04
### Changed

- Bug fixing and improvements

## [1.0.0] - 2023-06-30
Initial release
