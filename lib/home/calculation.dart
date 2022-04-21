import 'package:green_building/models/Product.dart';

class CalgreanArea {
  late List<double> newCost;
  late List<double> newTime;
  late List<double> newRatio;
  G product = G();

  String monthSix = '6 أشهر';
  String year = '12 أشهر';
  String yearYear = '24 أشهر';
  String area = 'مساحة المبنى';
  String cost = 'التكلفة التقديرية';

  CalgreanArea fun(var nextAreaGreen, String nextdropAreaSelectedGreen,
      String nextdropTimeSelectedGreen) {
    var nc;
    var nt;
    var rt;
    var ratio;
    List<double> ncList =[];
    List<double> ntList =[];
    List<double> rtList =[];
    CalgreanArea response = new CalgreanArea();

    if (nextdropAreaSelectedGreen == area &&
        nextAreaGreen != null &&
        nextdropTimeSelectedGreen == monthSix) {
      for (var r in product.green) {
        ratio = r;
        print('rt $ratio');
        nc = nextAreaGreen * 1500 +(nextAreaGreen* ratio);
        nc = num.parse(nc.toStringAsFixed(2));

        nt = 6+(6 * ratio);
        nt = num.parse(nt.toStringAsFixed(2));

        rt = (ratio * nc) + nc;
        rt = num.parse(rt.toStringAsFixed(2));

        ncList.add(nc);
        ntList.add(nt);
        rtList.add(rt);
        // ignore: unrelated_type_equality_checks
      }
      response.newCost = ncList;
      response.newTime = ntList;
      response.newRatio = rtList;
      return response;
    } else if (nextdropAreaSelectedGreen == area &&
        nextAreaGreen != null &&
        nextdropTimeSelectedGreen == year) {
      for (var r in product.green) {
        ratio = r;
        print('rt $ratio');
        nc = nextAreaGreen * 1500 +(nextAreaGreen* ratio);
        nc = num.parse(nc.toStringAsFixed(2));

        print('nc$nc');
        nt = 12+(12 * ratio);
        nt = num.parse(nt.toStringAsFixed(2));

        rt = (ratio * nc) + nc;
        rt = num.parse(rt.toStringAsFixed(2));

        ncList.add(nc);
        ntList.add(nt);
        rtList.add(rt);
        // ignore: unrelated_type_equality_checks
      }
      response.newCost = ncList;
      response.newTime = ntList;
      response.newRatio = rtList;
      return response;
    } else if (nextdropAreaSelectedGreen == area &&
        nextAreaGreen != null &&
        // ignore: unrelated_type_equality_checks
        nextdropTimeSelectedGreen == yearYear) {
      for (var r in product.green) {
        ratio = r;
        print('rt $ratio');
        nc = nextAreaGreen * 1500 +(nextAreaGreen*ratio);
        nc = num.parse(nc.toStringAsFixed(2));

        print('nc$nc');
        nt = 24+(24 * ratio);
        nt = num.parse(nt.toStringAsFixed(2));

        rt = (ratio * nc) + nc;
        rt = num.parse(rt.toStringAsFixed(2));
        ncList.add(nc);
        ntList.add(nt);
        rtList.add(rt);
        // ignore: unrelated_type_equality_checks
      }
      response.newCost = ncList;
      response.newTime = ntList;
      response.newRatio = rtList;
      return response;
    } else if (nextdropAreaSelectedGreen == cost &&
        nextAreaGreen != null &&
        nextdropTimeSelectedGreen == monthSix) {
      for (var r in product.green) {
        ratio = r;
        print('rt $ratio');
        nc = (nextAreaGreen * ratio)+nextAreaGreen;
        nc = num.parse(nc.toStringAsFixed(2));

        nt = 6+(6 * ratio);
        nt = num.parse(nt.toStringAsFixed(2));

        rt = (ratio * nc) + nc;
        rt = num.parse(rt.toStringAsFixed(2));

        ncList.add(nc);
        ntList.add(nt);
        rtList.add(rt);
        // ignore: unrelated_type_equality_checks
      }
      response.newCost = ncList;
      response.newTime = ntList;
      response.newRatio = rtList;
      return response;
    } else if (nextdropAreaSelectedGreen == cost &&
        nextAreaGreen != null &&
        nextdropTimeSelectedGreen == year) {
      for (var r in product.green) {
        ratio = r;
        print('rt $ratio');
        nc = (nextAreaGreen * ratio)+nextAreaGreen;
        nc = num.parse(nc.toStringAsFixed(2));

        nt = 12+(12 * ratio);
        nt = num.parse(nt.toStringAsFixed(2));

        rt = (ratio * nc) + nc;
        rt = num.parse(rt.toStringAsFixed(2));

        ncList.add(nc);
        ntList.add(nt);
        rtList.add(rt);
        // ignore: unrelated_type_equality_checks
      }
      response.newCost = ncList;
      response.newTime = ntList;
      response.newRatio = rtList;
      return response;
    } else if (nextdropAreaSelectedGreen == cost &&
        nextAreaGreen != null &&
        // ignore: unrelated_type_equality_checks
        nextdropTimeSelectedGreen == yearYear) {
      for (var r in product.green) {
        ratio = r;
        print('rt $ratio');
        nc = (nextAreaGreen * ratio)+nextAreaGreen;
        nc = num.parse(nc.toStringAsFixed(2));

        nt = (24 * ratio)+24;
        nt = num.parse(nt.toStringAsFixed(2));

        rt = (ratio * nc) + nc;
        rt = num.parse(rt.toStringAsFixed(2));

        ncList.add(nc);
        ntList.add(nt);
        rtList.add(rt);
        // ignore: unrelated_type_equality_checks
      }
      response.newCost = ncList;
      response.newTime = ntList;
      response.newRatio = rtList;
      return response;
    }
    return response;
  }
}


class CalTraditionalArea {
  late List<double> newCost;
  late List<double> newTime;
  late List<double> newRatio;
  G product = G();

  String year = '12 أشهر';
  String yearYear = '24 أشهر';
  String yearThree = '36 أشهر';
  String area = 'مساحة المبنى';
  String cost = 'التكلفة التقديرية';

  CalTraditionalArea funTrad(var nextAreaTrad, String nextdropAreaSelectedTrad,
      String nextdropTimeSelectedGreen) {
    var nc;
    var nt;
    var rt;
    var ratio;
    List<double> ncList =[];
    List<double> ntList =[];
    List<double> rtList =[];
    CalTraditionalArea response = new CalTraditionalArea();

    if (nextdropAreaSelectedTrad == area &&
        nextAreaTrad != null &&
        nextdropTimeSelectedGreen == yearThree) {
      for (var r in product.trad) {
        ratio = r;
        print('rt $ratio');
        nc = nextAreaTrad * 1000 +(nextAreaTrad* ratio);
        print('nc before $nc');

        nc = num.parse(nc.toStringAsFixed(2));
        print('nc after $nc');
        nt = (36 * ratio)+36;
        nt = num.parse(nt.toStringAsFixed(2));

        // rt = (ratio * nc) + nc;

        rt = num.parse(rt.toStringAsFixed(2));

        ncList.add(nc);
        ntList.add(nt);
        rtList.add(rt);
        // ignore: unrelated_type_equality_checks
      }
      response.newCost = ncList;
      response.newTime = ntList;
      response.newRatio = rtList;
      return response;
    } else if (nextdropAreaSelectedTrad == area &&
        nextAreaTrad != null &&
        nextdropTimeSelectedGreen == year) {
      for (var r in product.trad) {
        ratio = r;
        print('rt $ratio');
        nc = nextAreaTrad * 1000 +(nextAreaTrad* ratio);
        nc = num.parse(nc.toStringAsFixed(2));

        print('nc$nc');
        nt = (12 * ratio)+12;
        nt = num.parse(nt.toStringAsFixed(2));

        rt = (ratio * nc) + nc;
        rt = num.parse(rt.toStringAsFixed(2));

        ncList.add(nc);
        ntList.add(nt);
        rtList.add(rt);
        // ignore: unrelated_type_equality_checks
      }
      response.newCost = ncList;
      response.newTime = ntList;
      response.newRatio = rtList;
      return response;
    } else if (nextdropAreaSelectedTrad == area &&
        nextAreaTrad != null &&
        // ignore: unrelated_type_equality_checks
        nextdropTimeSelectedGreen == yearYear) {
      for (var r in product.trad) {
        ratio = r;
        print('rt $ratio');
        nc = nextAreaTrad * 1000 +(nextAreaTrad*ratio);
        nc = num.parse(nc.toStringAsFixed(2));
       print('nc$nc');
        nt = (24 * ratio)+24;
        nt = num.parse(nt.toStringAsFixed(2));

        rt = (ratio * nc) + nc;
        rt = num.parse(rt.toStringAsFixed(2));
        ncList.add(nc);
        ntList.add(nt);
        rtList.add(rt);
        // ignore: unrelated_type_equality_checks
      }
      response.newCost = ncList;
      response.newTime = ntList;
      response.newRatio = rtList;
      return response;
    } else if (nextdropAreaSelectedTrad == cost &&
        nextAreaTrad != null &&
        nextdropTimeSelectedGreen == yearThree) {
      for (var r in product.trad) {
        ratio = r;
        print('rt $ratio');
        nc = (nextAreaTrad * ratio)+nextAreaTrad;
        nc = num.parse(nc.toStringAsFixed(2));

        nt = (36 * ratio)+36;
        nt = num.parse(nt.toStringAsFixed(2));

        rt = (ratio * nc) + nc;
        rt = num.parse(rt.toStringAsFixed(2));

        ncList.add(nc);
        ntList.add(nt);
        rtList.add(rt);
        // ignore: unrelated_type_equality_checks
      }
      response.newCost = ncList;
      response.newTime = ntList;
      response.newRatio = rtList;
      return response;
    } else if (nextdropAreaSelectedTrad == cost &&
        nextAreaTrad != null &&
        nextdropTimeSelectedGreen == year) {
      for (var r in product.trad) {
        ratio = r;
        print('rt $ratio');
        nc = (nextAreaTrad * ratio)+nextAreaTrad;
        nc = num.parse(nc.toStringAsFixed(2));

        nt = (12 * ratio)+12;
        nt = num.parse(nt.toStringAsFixed(2));

        rt = (ratio * nc) + nc;
        rt = num.parse(rt.toStringAsFixed(2));

        ncList.add(nc);
        ntList.add(nt);
        rtList.add(rt);
        // ignore: unrelated_type_equality_checks
      }
      response.newCost = ncList;
      response.newTime = ntList;
      response.newRatio = rtList;
      return response;
    } else if (nextdropAreaSelectedTrad == cost &&
        nextAreaTrad != null &&
        // ignore: unrelated_type_equality_checks
        nextdropTimeSelectedGreen == yearYear) {
      for (var r in product.trad) {
        ratio = r;
        nc = (nextAreaTrad * ratio)+nextAreaTrad;
        nc = num.parse(nc.toStringAsFixed(2));
        print('nc $nc');

        nt = (24 * ratio)+24;
        nt = num.parse(nt.toStringAsFixed(2));
        print('nt $nt');

        rt = (ratio * nc) + nc;
        rt = num.parse(rt.toStringAsFixed(2));
        print('rt $rt');

        ncList.add(nc);
        ntList.add(nt);
        rtList.add(rt);
        // ignore: unrelated_type_equality_checks
      }
      response.newCost = ncList;
      response.newTime = ntList;
      response.newRatio = rtList;
      return response;
    }
    return response;
  }
}
