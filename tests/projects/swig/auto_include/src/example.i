%module example

%{
/* Put headers and other declarations here */
#include "nlohmann/detail/abi_macros.hpp"
#include "nlohmann/detail/value_t.hpp"

extern double My_variable;
extern int    fact(int);
extern int    my_mod(int n, int m);
nlohmann::detail::value_t nlohmann_value;
%}

%include "nlohmann/detail/abi_macros.hpp"
%include "nlohmann/detail/value_t.hpp"
extern double My_variable;
extern int    fact(int);
extern int    my_mod(int n, int m);
nlohmann::detail::value_t nlohmann_value;