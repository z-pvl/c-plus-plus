#include<iostream>
#include<iomanip>
using namespace std;

//function prototypes
void getRainfall(double[], int);
double getTotal(const double[], int);
double getHighest(const double[], int);
double getLowest(const double[], int);

//string array for months 
const string month[] = {"January", "Febrary", "March", "April",
						"May", "June", "July", "August", "September",
						"October", "November", "December"};
int main()
{
	const int MONTHS = 12; // array size
	double rainfall[MONTHS], // array of rainfalls
		   totalRain,		 // total of the rainfall
		   averageRain,		 // average of the rainfall
		   highestRain,		 // highest rainfall amount
		   lowestRain;		 // lowest rainfall amount
	
	// set up numeric output formatting
	cout << fixed << showpoint << setprecision(2);	
	cout << "Please enter rainfall amount for each of 12 months" << endl;
	
	// calls the function for user to enter rainfall for each month
	getRainfall(rainfall, MONTHS);
	
	// to calculate the total of rainfall
	totalRain = getTotal(rainfall, MONTHS);
	cout << "Total rainfall for the year is " << totalRain << "  inches."<< endl; 
	
	// to calculate average of rainfall
	averageRain = totalRain/MONTHS;
	cout << "The average monthly rainfall is " << averageRain << " inches." << endl;
	
	// to display the highest amount of rainfall
	highestRain = getHighest(rainfall, MONTHS);
	cout << "The highest rainfall month is " << highestRain << " inches." << endl;
	
	//to display the lowest amount of rainfall
	lowestRain = getLowest(rainfall, MONTHS);
	cout << "The lowest rainfall month is "<< lowestRain << " inches." << endl ;
		
	return 0;
}

// function to get the rainfall inputs from user
void getRainfall(double rain[], int months)
{
	int index;
		
	for (index=0; index<=months-1; index++)
	{
		cout << month[index] << " : " ;
		cin >> rain[index];
		if (rain[index]<0)
		{
			do 
			{
				cout << "invalid input. Program does not accept negative " 
					 << "numbers for monthly rainfall figures." << endl;
				cout << month[index]<< " : " ;
				cin >> rain[index];
			}	
			while (rain[index]<0);		
		}
	
	}
}

// function to calculate the total rainfall
double getTotal(const double inch[], int months)
{
	double totalRain = 0;
	for (int count = 0; count<months; count++)
		totalRain += inch[count];
		return totalRain;
}

// function to find the highest amount of rainfall
double getHighest(const double inch[], int months)
{
	double highestRain = 0;
	highestRain = inch[0];
	
	for (int count = 1; count<months; count++)
	{
		if (inch[count] > highestRain)
			highestRain = inch[count];
	}
	return highestRain;
}

// function to find lowest amount of rainfall
double getLowest(const double inch[], int months)
{
	double lowestRain = 0;
	lowestRain = inch[0];
	
	for (int count=1; count<months; count++)
	{
		if (inch[count] < lowestRain)
			lowestRain = inch[count];
	} 
	return lowestRain;
}
