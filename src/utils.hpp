#ifndef UTILS_HPP
#define UTILS_HPP

#include <iostream>
#include <memory>
#include <string>
#include <fstream>
#include <set>
#include <random>
#include <chrono>
#include <algorithm>

using namespace std;

#define with_ptr(obj) auto _ = obj;

inline
int get_line_int(istream &in)
{
    string line;
    getline(in, line);
    return stoi(line);
}

inline
vector<string> get_lines(string const &filename)
{
    ifstream in(filename);
    std::vector<string> result;
    while (!in.eof()) {
        string line;
        std::getline(in, line);
        result.push_back(line);
    }
    return result;
}

inline
vector<wstring> get_wlines(string const &filename)
{
    wifstream in(filename);
    std::vector<wstring> result;
    while (!in.eof()) {
        wstring line;
        std::getline(in, line);
        result.push_back(line);
    }
    return result;
}

inline
set<int> range_set(int start, int end)
{
    set<int> result;
    for (int i = start; i < end; ++i)
        result.insert(i);
    return result;
}

template <typename T>
T copy_random(set<T> const &collection)
{
    int chosen = rand() % collection.size();
    int i = 0;
    for (T val : collection) {
        if (chosen == i)
            return val;
        ++i;
    }
    return 0;
}

template <typename T>
string set_to_string(set<T> const &set)
{
    string result;
    result.append("{");
    for (T const &val : set)
    {
        result.append(to_string(val));
        result.append(", ");
    }
    result.append("}");
    return result;
}

// simple std
namespace sstd {

template <typename Key, typename T>
using umap = unordered_map<Key, T>;

template<typename T>
std::set<T> set_difference(std::set<T> const &first, std::set<T> const &second) {
    std::set<T> result;
    set_difference(first.begin(), first.end(), second.begin(), second.end(),
                inserter(result, result.begin()));
    return result;
}

}



#endif