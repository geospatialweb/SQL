SQL
===

A collection of 20 spatial queries and stored proceedures for MS SQL that I created when I worked for KFL&A Public Health in Kingston, Ontario on contract in 2010. It was kinda make-work projects but did I learn a ton. Working with OGC-compliant datatypes and methods in a spatial database. Skills are transferable to PostGIS.

One project was to determine how many people would be affected if a bomb was dropped on the Health Unit within varying buffer ranges using 2006 Census data such as Dissemination Areas. All calculations had to be determined by spatial query.

Another project was to create 5-digit postal code "neighbourhoods" for all of Canada. The Health Unit developed syndromic surveillance of emergency room admissions (near real time - 5 minute delay) as an early warning system to detect public health threats such as H1N1 and West Nile Virus for example. All data was georeferenced using postal codes but the full six digit postal code is too precise that can identify individuals.

Confidentiality and privacy are obvious public concerns so it was decided to use only 5 digit postal codes instead that would represent an area or neighbourhood of where patients lived, without exactly revealing their home location and thereby jeopardizing personal anonymity.

Except Canada Post does not have 5 digit postal codes in their PCCF database and their digital maps only delineate by six digit postal code and the first 3 digit (FSA - Forward Sortation Area) code.

The key is to recognize clusters by identifiable and denoted areas of small size like a Dissemination Area, but not as granular as say a street name. A bunch of blocks is good enough for tracking puropses. So I had to use the existing six digit centroids to create 5 digit area approximations using Thiessen polygons for every postal code in Canada and clip by province since postal codes do not cross provincial boundaries - conducted entirely using spatial datatypes and methods.

A cool project and the results were pretty good given this methodology approach would be prone to any number of anomolies given the results are only approximations.
