# c-plus-plus
//classwork 

#include<iostream>
#include<iomanip>
using namespace std;

double celsius(double); //function prototype

int main()
{
	double C;  // to hold a celsius temperature
	double F=0; // to hold a fahrenheit temp
	
	// header output
	cout << setw(2) << "F" << setw(4) << "C" << endl;
	
	// numeric output formatting
	cout << fixed << setprecision(0);
	
	// calling a function celsius 
	// for fahrenheit temp from 0 to 20
	do
	{
		C = celsius(F);
		
		cout << setw(2) << F << setw(4) << C <<endl;
		F++;
	}
	while (F<=20);
	
	return 0;
}
	
	// definition of a function celsius
	// this function converts fahrenheit temp to celsius
	double celsius(double FF)
	{
		return (FF-32) * 5 / 9;
	}

