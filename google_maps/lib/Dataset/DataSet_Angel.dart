import 'package:flutter/material.dart';

import '../Class/location_class.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../Class/polygons.dart';

// For Lot-1------------------------------------------------------------------
ParkingLocation lot1 = ParkingLocation(
  LotName: 'Lot1',
  LngLat: location_1,
  id: '1',
  poly: poly_1,
);
List<LatLng> location_1 = [
  const LatLng(40.916967, -73.117652),
  const LatLng(40.915840, -73.117556),
  const LatLng(40.915901, -73.116188),
  const LatLng(40.917028, -73.116257),
];
Polygon poly_1 = drawPoly(allpoints: location_1, color: Colors.blue, id: '1');


// For Lot-2 ------------------------------------------------------------------
ParkingLocation lot2 =
    ParkingLocation(LotName: 'Lot2', LngLat: location_2, id: '2', poly: poly_2);
List<LatLng> location_2 = [
  const LatLng(40.910446, -73.123343),
  const LatLng(40.910393, -73.122901),
  const LatLng(40.910444, -73.122871),
  const LatLng(40.910351, -73.122150),
  const LatLng(40.910404, -73.122120),
  const LatLng(40.910347, -73.121710),
  const LatLng(40.910191, -73.121723),
  const LatLng(40.910288, -73.123367),
];

Polygon poly_2 = drawPoly(allpoints: location_2, color: Colors.red, id: '2');

// For Lot-3------------------------------------------------------------------
ParkingLocation lot3 = ParkingLocation(
  LotName: 'Lot3',
  LngLat: location_3,
  id: '3',
  poly: poly_3,
);
List<LatLng> location_3 = [
  const LatLng(40.919119,-73.122321),
  const LatLng(40.918973,-73.121537),
  const LatLng(40.918098,-73.121709),
  const LatLng(40.918163,-73.122471),
  const LatLng(40.917790,-73.122664),
  const LatLng(40.917903,-73.123329),
  const LatLng(40.918771,-73.123200),
  const LatLng(40.918665,-73.122535),
];
Polygon poly_3 = drawPoly(allpoints: location_3, color: Colors.blue, id: '3');

// For Lot-6b------------------------------------------------------------------
ParkingLocation lot6b = ParkingLocation(
  LotName: 'Lot6b',
  LngLat: location_6b,
  id: '6b',
  poly: poly_6b,
);
List<LatLng> location_6b = [
  const LatLng(40.918636,-73.127305),
  const LatLng(40.917999,-73.127779),
  const LatLng(40.917789,-73.127435),
  const LatLng(40.918548,-73.126899),
];
Polygon poly_6b = drawPoly(allpoints: location_6b, color: Colors.blue, id: '6b');

// For Lot-9------------------------------------------------------------------
ParkingLocation lot9 = ParkingLocation(
  LotName: 'Lot9',
  LngLat: location_9,
  id: '9',
  poly: poly_9,
);
List<LatLng> location_9 = [
  const LatLng(40.916471,-73.128900),
  const LatLng(40.916982,-73.128476),
  const LatLng(40.916808,-73.128160),
  const LatLng(40.916333,-73.128508),
];
Polygon poly_9 = drawPoly(allpoints: location_9, color: Colors.blue, id: '9');

// For Lot-11------------------------------------------------------------------
ParkingLocation lot11 = ParkingLocation(
  LotName: 'Lot11',
  LngLat: location_11,
  id: '11',
  poly: poly_11,
);
List<LatLng> location_11 = [
  const LatLng(40.915434,-73.127536),
  const LatLng(40.915114,-73.127621),
  const LatLng(40.914927,-73.126207),
  const LatLng(40.915069,-73.126186),
  const LatLng(40.915146,-73.126770),
  const LatLng(40.915320,-73.126754),
];
Polygon poly_11 = drawPoly(allpoints: location_11, color: Colors.blue, id: '11');

// For Lot-13------------------------------------------------------------------
ParkingLocation lot13 = ParkingLocation(
  LotName: 'Lot13',
  LngLat: location_13,
  id: '13',
  poly: poly_13,
);
List<LatLng> location_13 = [
  const LatLng(40.915434,-73.127536),
  const LatLng(40.915114,-73.127621),
  const LatLng(40.914927,-73.126207),
  const LatLng(40.915069,-73.126186),
  const LatLng(40.915146,-73.126770),
  const LatLng(40.915320,-73.126754),
];
Polygon poly_13 = drawPoly(allpoints: location_13, color: Colors.blue, id: '13');

// For Lot-13a------------------------------------------------------------------
ParkingLocation lot13a = ParkingLocation(
  LotName: 'Lot13a',
  LngLat: location_13a,
  id: '13a',
  poly: poly_13a,
);
List<LatLng> location_13a = [
  const LatLng(40.914598,-73.125881),
  const LatLng(40.914537,-73.125377),
  const LatLng(40.914355,-73.125425),
  const LatLng(40.914416,-73.125902),
];
Polygon poly_13a = drawPoly(allpoints: location_13a, color: Colors.blue, id: '13a');


// For Lot-14a------------------------------------------------------------------
ParkingLocation lot14a = ParkingLocation(
  LotName: 'Lot14a',
  LngLat: location_14a,
  id: '14a',
  poly: poly_14a,
);
List<LatLng> location_14a = [
  const LatLng(40.916212,-73.129875),
  const LatLng(40.916067,-73.129590),
  const LatLng(40.915852,-73.129741),
  const LatLng(40.915985,-73.130057),
];
Polygon poly_14a = drawPoly(allpoints: location_14a, color: Colors.blue, id: '14a');

// For Lot-14b------------------------------------------------------------------
ParkingLocation lot14b = ParkingLocation(
  LotName: 'Lot14b',
  LngLat: location_14b,
  id: '14b',
  poly: poly_14b,
);
List<LatLng> location_14b = [
  const LatLng(40.915771,-73.129998),
  const LatLng(40.915296,-73.128963),
  const LatLng(40.915386,-73.128893),
];
Polygon poly_14b = drawPoly(allpoints: location_14b, color: Colors.blue, id: '14b');

// For Lot-16------------------------------------------------------------------
ParkingLocation lot16 = ParkingLocation(
  LotName: 'Lot14b',
  LngLat: location_16,
  id: '16',
  poly: poly_16,
);
List<LatLng> location_16 = [
  const LatLng(40.913585,-73.126470),
  const LatLng(40.913082,-73.126588),
  const LatLng(40.912900,-73.126829),
  const LatLng(40.912596,-73.126926),
  const LatLng(40.912575,-73.126561),
  const LatLng(40.912871,-73.126422),
  const LatLng(40.913552,-73.126261),
];
Polygon poly_16 = drawPoly(allpoints: location_16, color: Colors.blue, id: '16');

// For Lot-18------------------------------------------------------------------
ParkingLocation lot18 = ParkingLocation(
  LotName: 'Lot18',
  LngLat: location_18,
  id: '18',
  poly: poly_18,
);
List<LatLng> location_18 = [
  const LatLng(40.912361,-73.126336),
  const LatLng(40.911959,-73.126422),
  const LatLng(40.911967,-73.126711),
  const LatLng(40.912105,-73.126835),
  const LatLng(40.912430,-73.126760),
];
Polygon poly_18 = drawPoly(allpoints: location_18, color: Colors.blue, id: '18');

// For Lot-22------------------------------------------------------------------
ParkingLocation lot22 = ParkingLocation(
  LotName: 'Lot22',
  LngLat: location_22,
  id: '22',
  poly: poly_22,
);
List<LatLng> location_22 = [
  const LatLng(40.909505,-73.125127),
  const LatLng(40.909882,-73.124472),
  const LatLng(40.909584,-73.124270),
  const LatLng(40.909178,-73.125392),
];
Polygon poly_22 = drawPoly(allpoints: location_22, color: Colors.blue, id: '22');

// For Lot-24------------------------------------------------------------------
ParkingLocation lot24 = ParkingLocation(
  LotName: 'Lot24',
  LngLat: location_24,
  id: '24',
  poly: poly_24,
);
List<LatLng> location_24 = [
  const LatLng(40.910205,-73.121806),
  const LatLng(40.910278,-73.123372),
  const LatLng(40.910427,-73.123342),
  const LatLng(40.910358,-73.121722),
];
Polygon poly_24 = drawPoly(allpoints: location_24, color: Colors.blue, id: '24');

// For Lot-31------------------------------------------------------------------
ParkingLocation lot31 = ParkingLocation(
  LotName: 'Lot31',
  LngLat: location_31,
  id: '31',
  poly: poly_31,
);
List<LatLng> location_31 = [
  const LatLng(40.904473,-73.121043),
  const LatLng(40.904286,-73.120822),
  const LatLng(40.904148,-73.120511),
  const LatLng(40.904037,-73.119732),
  const LatLng(40.904131,-73.119646),
  const LatLng(40.904248,-73.120451),
  const LatLng(40.904540,-73.120971),
];
Polygon poly_31 = drawPoly(allpoints: location_31, color: Colors.blue, id: '31');

// For Lot-32------------------------------------------------------------------
ParkingLocation lot32 = ParkingLocation(
  LotName: 'Lot32',
  LngLat: location_32,
  id: '32',
  poly: poly_32,
);
List<LatLng> location_32 = [
  const LatLng(40.903851,-73.118706),
  const LatLng(40.904045,-73.118068),
  const LatLng(40.903749,-73.117891),
  const LatLng(40.903555,-73.118502),
];
Polygon poly_32 = drawPoly(allpoints: location_32, color: Colors.blue, id: '32');

// For Lot-33------------------------------------------------------------------
ParkingLocation lot33 = ParkingLocation(
  LotName: 'Lot33',
  LngLat: location_33,
  id: '33',
  poly: poly_33,
);
List<LatLng> location_33 = [
  const LatLng(40.905071,-73.117969),
  const LatLng(40.905185,-73.117715),
  const LatLng(40.904885,-73.117661),
  const LatLng(40.904868,-73.117849),
];
Polygon poly_33 = drawPoly(allpoints: location_33, color: Colors.blue, id: '33');

// For Lot-34------------------------------------------------------------------
ParkingLocation lot34 = ParkingLocation(
  LotName: 'Lot34',
  LngLat: location_34,
  id: '34',
  poly: poly_34,
);
List<LatLng> location_34 = [
  const LatLng4(0.906437,-73.119172),
  const LatLng(40.906558,-73.119027),
  const LatLng(40.905942,-73.118174),
  const LatLng(40.905529,-73.118411),
  const LatLng(40.905460,-73.118680),
  const LatLng(40.905574,-73.118840),
  const LatLng(40.905910,-73.118384),
  const LatLng(40.906413,-73.119130),
];
Polygon poly_34 = drawPoly(allpoints: location_34, color: Colors.blue, id: '34');

// For Lot-35------------------------------------------------------------------
ParkingLocation lot35 = ParkingLocation(
  LotName: 'Lot35',
  LngLat: location_35,
  id: '35',
  poly: poly_35,
);
List<LatLng> location_35 = [
  const LatLng(40.906077,-73.119737),
  const LatLng(40.906442,-73.119184),
  const LatLng(40.906632,-73.119673),
  const LatLng(40.906012,-73.120285),
  const LatLng(40.906502,-73.120553),
  const LatLng(40.906283,-73.121473),
  const LatLng(40.906198,-73.121379),
  const LatLng(40.906373,-73.120639),
  const LatLng(40.906048,-73.120483),
  const LatLng(40.905927,-73.120317),
];
Polygon poly_35 = drawPoly(allpoints: location_35, color: Colors.blue, id: '35');

// For Lot-37------------------------------------------------------------------
ParkingLocation lot37 = ParkingLocation(
  LotName: 'Lot37',
  LngLat: location_37,
  id: '37',
  poly: poly_37,
);
List<LatLng> location_37 = [
  const LatLng(40.904781,-73.121014),
  const LatLng(40.904838,-73.121127),
  const LatLng(40.905134,-73.120591),
  const LatLng(40.905564,-73.120542),
  const LatLng(40.905598,-73.120290),
  const LatLng(40.905270,-73.120295),
  const LatLng(40.905018,-73.120499),
  const LatLng(40.904787,-73.121004),
];
Polygon poly_37 = drawPoly(allpoints: location_37, color: Colors.blue, id: '37');

// For Lot-37b------------------------------------------------------------------
ParkingLocation lot37b = ParkingLocation(
  LotName: 'Lot37b',
  LngLat: location_37b,
  id: '37b',
  poly: poly_37b,
);
List<LatLng> location_37b = [
  const LatLng(40.903606,-73.120901),
  const LatLng(40.903539,-73.121304),
  const LatLng(40.902670,-73.121160),
  const LatLng(40.902722,-73.120865),
  const LatLng(40.903397,-73.120982),
  const LatLng(40.903425,-73.120853),
  const LatLng(40.903587,-73.120880),
];
Polygon poly_37b = drawPoly(allpoints: location_37b, color: Colors.blue, id: '37b');



// For Lot-40------------------------------------------------------------------
ParkingLocation lot40 = ParkingLocation(
  LotName: 'Lot40',
  LngLat: location_40,
  id: '40',
  poly: poly_40,
);
List<LatLng> location_40 = [
  const LatLng(40.897639,-73.129056),
  const LatLng(40.896730,-73.128799),
  const LatLng(40.896795,-73.128091),
  const LatLng(40.894921,-73.127503),
  const LatLng(40.895391,-73.124842),
  const LatLng(40.898202,-73.125730),
  const LatLng(40.897942,-73.127114),
  const LatLng(40.897513,-73.126985),
  const LatLng(40.897440,-73.127339),
  const LatLng(40.897269,-73.127275),
  const LatLng(40.897229,-73.127639),
  const LatLng(40.897181,-73.128063),
  const LatLng(40.897708,-73.128245),

];
Polygon poly_40 = drawPoly(allpoints: location_40, color: Colors.blue, id: '40');
