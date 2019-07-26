import 'package:flutter/material.dart';

class GirdViewFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
     child: gird3,

    );
  }

  //set columns count
  Widget gird3 = GridView.count(
    primary: false,
    padding: const EdgeInsets.all(20.0),
    crossAxisSpacing: 10.0,
    crossAxisCount: 3,
    children: <Widget>[

      Image.asset('assets/images/girdview/imgthacnuoc1.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc2.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc3.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc4.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc1.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc2.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc3.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc4.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc1.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc2.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc3.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc4.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc1.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc2.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc3.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc4.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc1.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc2.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc3.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc4.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc1.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc2.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc3.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc4.jpg')
    ],
  );

  //set pixels extent
  Widget gird4 = GridView.extent(

    primary: false,
    padding: const EdgeInsets.all(20.0),
    crossAxisSpacing: 10.0,
    maxCrossAxisExtent: 50,
    children: <Widget>[
      Image.asset('assets/images/girdview/imgthacnuoc1.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc2.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc3.jpg'),
      Image.asset('assets/images/girdview/imgthacnuoc4.jpg')


    ],
  );

}