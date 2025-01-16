extension IntExtention on int {

    Duration get seconds => Duration(seconds: this); 
    Duration get milliseconds => Duration(milliseconds: this); 
    Duration get microseconds => Duration(microseconds: this);
    Duration get minutes => Duration(minutes: this);
    Duration get hours => Duration(hours: this);

   
}