import 'package:rxdart/rxdart.dart';
import 'package:mynote/ui/views/note/Validation.dart';
class LoginViewModel{ 
  final _emailSubject = BehaviorSubject<String>();
  final _passSubject = BehaviorSubject<String>();
  final _logSubject = BehaviorSubject<bool>();
  Stream<String> get emailStream => _emailSubject.stream;
  Sink<String> get emailSink => _emailSubject.sink;
    
  Stream<String> get passStream => _passSubject.stream;
  Sink<String> get passSink => _passSubject.sink;

  Stream<bool> get logStream => _logSubject.stream;
  Sink<bool> get logSink => _logSubject.sink;
  
  LoginViewModel()
  {
    Obserable.combineLastest2(_emailSubject, _passSubject,(email, pass){
     {
       return Validation.validationEmail(email) == null &&
             Validation.validationPass(pass) ==null;
     }).listen((enable){
      logSink.add(enable);
    });

  }
  dispose(){
    _emailSubject.close();
    _passSubject.close();
    _logSubject.close();
  }
   
}