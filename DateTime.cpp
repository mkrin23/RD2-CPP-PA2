#include "DateTime.h"
#include <string>

DateTime::DateTime(){};

//parse metoden
void DateTime::parse(const std::string& dateTime){
    //extractes fra string og omdannes til unsigned int
    std::string day = dateTime.substr(0,2);
    mDay = std::stoul(day);

    //extracter måned fra string, og omdanner string til tal og gemmer i mMonth
    std::string month = dateTime.substr(3,2);
    mMonth = std::stoul(month);

    //extracter år fra string og gemmer det i member variabel
    std::string year = dateTime.substr(6,4);
    mYear = std::stoul(year);

    // extracter time og gemmer det i member variabel
    std::string hour = dateTime.substr(11,2);
    mHour = std::stoul(hour);

    // extracter minutter og gemmer det i member variabel
    std::string minute = dateTime.substr(14,2);
    mMinute = std::stoul(minute);

    // extracter sekunder og gemmer det i member variabel
    std::string seconds = dateTime.substr(17,2);
    mSecond = std::stoul(seconds);

    //antager at ved timezone gemmes 0100 ved "GM+0100", std::stoi konverterer string til int.
    std::string timezone = dateTime.substr(27,5);
    mTimezone = std::stoi(timezone);
}

//Set og get metoderne
unsigned int DateTime::getYear() const{return mYear;}
void DateTime::setYear(unsigned int year){mYear = year;}

unsigned int DateTime::getMonth() const{return mMonth;}
void DateTime::setMonth(unsigned int month){mMonth = month;}

unsigned int DateTime::getDay() const{return mDay;}
void DateTime::setDay(unsigned int day){mDay = day;}

unsigned int DateTime::getHour() const{return mHour;}
void DateTime::setHour(unsigned int hour){mHour = hour;}

unsigned int DateTime::getMinute() const{return mMinute;}
void DateTime::setMinute(unsigned int minute){mMinute = minute;}

unsigned int DateTime::getSecond() const{return mSecond;}
void DateTime::setSecond(unsigned int second){mSecond = second;}

int DateTime::getTimezone() const {return mTimezone;}
void DateTime::setTimezone(int value){mTimezone = value;}
