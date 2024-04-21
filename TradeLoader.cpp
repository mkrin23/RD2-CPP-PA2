#include "TradeLoader.h"
#include <iostream>
#include <fstream>
#include <sstream>

TradeLoader::TradeLoader(){}

void TradeLoader::load(const std::string& filename){
    std::string data;
    // open file
    std::ifstream dataStream(filename);
    // read every line
    std::getline(dataStream,data);
    while (std::getline(dataStream,data)){
        //split line into cells and insert into member vector
        mData.push_back(split(data,','));
    }
}

std::array<std::string, 6> TradeLoader::split(const std::string& line, char delim){
    std::array<std::string, 6> data;
    int i = 0;
    std::string word = "";

    for(int c = 0; c < line.length(); ++c){
        //check each character
        if (line[c] == delim){
            // check if is delim
            //save word and start anew
            data[i++] = word;
            word = "";
            continue;
        }
        //else add character to word
        word = word+line[c];
    }
    //save last word and return
    data[i] = word;
    return data;
}

std::vector<TradeInfo> TradeLoader::getTradeInfo(){
    std::vector<TradeInfo> trades;

    for (std::array<std::string,6> row : mData){
        //create TradeInfo for each line
        trades.push_back(TradeInfo(DateTime(row[0]),
                         std::stod(row[1]),
                         std::stod(row[2]),
                         std::stod(row[3]),
                         std::stod(row[3]),
                         std::stod(row[5])));
    }
    
    return trades;
}
