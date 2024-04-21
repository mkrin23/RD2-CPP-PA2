#include "Stock.h"
#include <iostream>

Stock::Stock(){
};

std::vector<TradeInfo> Stock::getAllTradeInfo() const {
    return mTradeInfo;
}

void Stock::setAllTradeInfo(const std::vector<TradeInfo> &tradeInfo){
    mTradeInfo = tradeInfo;
};

std::vector<TradeInfo> Stock::getTrades(unsigned int interval){
    // create return vector and dummy TradeInfo
    std::vector<TradeInfo> ret;
    TradeInfo ti;
    
    // create all variables
    double open, high = 0, low = 0, close, volume = 0;
    bool bOpen = 1;
    int i = 0;
    //for every value in vector
    for(auto it = mTradeInfo.begin(); it != mTradeInfo.end(); ++it){
        if(bOpen){
            //if first value after new
            ti.setOpen((*it).getOpen());
            ti.setDateTime((*it).getDateTime());

            bOpen = 0;
        }

        //save new close walue
        close = (*it).getClose();

        //check if high and low is better
        high = ((*it).getHigh() > high) ? (*it).getHigh() : high;
        low = ((*it).getLow() < low) ? (*it).getLow() : low;

        //sum all volumes
        volume += (*it).getVolume();

        if( (interval == TRADE_INTERVAL_MINUTE && ((*it).getDateTime().getMinute() > ti.getDateTime().getMinute() ||// if set to pr minut
                                                   (*it).getDateTime().getHour() > ti.getDateTime().getHour() ||
                                                   (*it).getDateTime().getDay() > ti.getDateTime().getDay() ||
                                                   (*it).getDateTime().getMonth() > ti.getDateTime().getMonth() ||
                                                   (*it).getDateTime().getYear() > ti.getDateTime().getYear())) ||
            (interval == TRADE_INTERVAL_HOUR && ((*it).getDateTime().getHour() > ti.getDateTime().getHour() || // if set to per hr
                                                 (*it).getDateTime().getDay() > ti.getDateTime().getDay() ||
                                                 (*it).getDateTime().getMonth() > ti.getDateTime().getMonth() ||
                                                 (*it).getDateTime().getYear() > ti.getDateTime().getYear())) ||
            (interval == TRADE_INTERVAL_2HOUR && ((*it).getDateTime().getHour() > (ti.getDateTime().getHour()+1) || // if set to pr 2 hr
                                                 (*it).getDateTime().getDay() > ti.getDateTime().getDay() ||
                                                 (*it).getDateTime().getMonth() > ti.getDateTime().getMonth() ||
                                                 (*it).getDateTime().getYear() > ti.getDateTime().getYear())) ||
            (interval == TRADE_INTERVAL_4HOUR && ((*it).getDateTime().getHour() > (ti.getDateTime().getHour()+3) || // if set to pr 4 hr
                                                 (*it).getDateTime().getDay() > ti.getDateTime().getDay() ||
                                                 (*it).getDateTime().getMonth() > ti.getDateTime().getMonth() ||
                                                 (*it).getDateTime().getYear() > ti.getDateTime().getYear())) ||
            (interval == TRADE_INTERVAL_DAY && ((*it).getDateTime().getDay() > ti.getDateTime().getDay() || // if set to per day
                                                (*it).getDateTime().getMonth() > ti.getDateTime().getMonth() ||
                                                (*it).getDateTime().getYear() > ti.getDateTime().getYear()))
           ){
            //insert saved values in element in return vector
            ti.setClose((*it).getClose());
            ti.setHigh(high);
            high = 0;
            ti.setLow(low);
            low = 0;
            ti.setVolume(volume);
            volume = 0;

            ret.push_back(ti);

            ++i;
            bOpen = 1;
        }

    }
    return ret;
};


