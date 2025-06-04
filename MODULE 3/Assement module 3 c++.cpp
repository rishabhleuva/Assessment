#include<iostream>
using namespace std;

class lecturedetail {
private:
    string nl, ns, nc;
    int n1;

public:
	  // Default Constructor
    lecturedetail() {
        nl = "";
        ns = "";
        nc = "";
        n1 = 0;
    }
    // Constructor
    lecturedetail(string l, string s, string c, int n) {
        nl = l;
        ns = s;
        nc = c;
        n1 = n;
    }

    // Method to add lecture details
    void addlecturedetail() {
        cout << "Enter the name of lecturer: ";
        getline(cin, nl);

        cout << "Enter the name of subject: ";
        getline(cin, ns);

        cout << "Enter the name of course: ";
        getline(cin, nc);

        cout << "Enter the number of lecturers: ";
        cin >> n1;
    }

    // Method to display lecture details
    void displaylecturedetail() {
    	cout<<"\n----------LECTURE DETAILS----------";
        cout << "\nLecturer Name: " << nl << endl;
        cout << "Subject Name: " << ns << endl;
        cout << "Course Name: " << nc << endl;
        cout << "Number of Lecturers: " << n1 << endl;
    }
};

int main() {
	lecturedetail l;
	l.addlecturedetail();
	l.displaylecturedetail();

    return 0;
}

