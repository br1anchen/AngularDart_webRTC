library webrtcDemo;

import 'package:angular/angular.dart';
import 'package:logging/logging.dart';
import 'package:di/di.dart';
import 'package:perf_api/perf_api.dart';

import 'package:webrtcDemo/controllers/webRTCCtrl.dart';

class AppModule extends Module{
  AppModule(){

    type(WebRTCCtrl);

    type(Profiler, implementedBy: Profiler);

  }
}

main(){
  Logger.root.level = Level.FINEST;
  Logger.root.onRecord.listen((LogRecord r) {
    print(r.message);
  });

  ngBootstrap(module : new AppModule());
}
