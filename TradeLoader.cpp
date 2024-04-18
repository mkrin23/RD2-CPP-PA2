#include "TradeLoader.h"
#include <iostream>
#include <fstream>
#include <sstream>

TradeLoader::TradeLoader(){}

void TradeLoader::load(const std::string& filename){
    std::string data;

    std::ifstream dataStream(filename);
    std::array<std::string,6> row;
    std::getline(dataStream,data);
    while (std::getline(dataStream,data)){
        mData.push_back(split(data,','));
    }
}

std::array<std::string, 6> TradeLoader::split(const std::string& line, char delim){
    std::array<std::string, 6> data;
    int i = 0;
    std::string word = "";

    for(int c = 0; c < line.length(); ++c){
        if (line[c] == delim){
            data[i++] = word;
            word = "";
            continue;
        }
        word = word+line[c];
    }
    data[i] = word;
    return data;
}

std::vector<TradeInfo> TradeLoader::getTradeInfo(){
    std::vector<TradeInfo> trades;

    for (std::array<std::string,6> row : mData){
        trades.push_back(TradeInfo(DateTime(row[0]),
                         std::stod(row[1]),
                         std::stod(row[2]),
                         std::stod(row[3]),
                         std::stod(row[3]),
                         std::stod(row[5])));
    }
    
    return trades;
}
