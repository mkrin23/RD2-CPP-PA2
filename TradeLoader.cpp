#include "TradeLoader.h"
#include <iostream>
#include <fstream>

TradeLoader::TradeLoader(){}

void TradeLoader::load(const std::string& filename){
    std::string data;

    std::ifstream dataStream(filename);
    
    int i = 0;
    std::array<std::string,6> row;
    
    while (std::getline(dataStream,data,',')){
        
        row[i] = data;

        if(i >= 6){
            mData.push_back(row);
            i = 0;
        }else{
            ++i;
        }
    }
}

std::vector<TradeInfo> TradeLoader::getTradeInfo(){
    std::vector<TradeInfo> trades;

    for (std::array<std::string,6> row : mData){
        trades.push_back(TradeInfo(DateTime(row[0]),std::stod(row[1]),std::stod(row[2]),std::stod(row[3]),std::stod(row[3]),std::stod(row[5])));
    }
    
    return trades;
}
