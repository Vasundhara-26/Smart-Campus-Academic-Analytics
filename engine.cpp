#include 
#include 
#include 

struct StudentRecord {
    int id;
    std::string name;
    double gpa;
    double attendance;
};

class RiskEngine {
public:
    static std::string evaluateRisk(double gpa, double attendance) {
        if (gpa < 2.5 || attendance < 75.0) {
            return "HIGH RISK";
        } else if (gpa < 3.2 || attendance < 85.0) {
            return "MODERATE RISK";
        }
        return "LOW RISK";
    }
};

int main() {
    std::vector students = {
        {101, "Vasundhara Yadav", 3.85, 94.5},
        {102, "Rohan Sharma", 2.40, 72.0}
    };

    std::cout << "--- C++ Risk Engine Execution ---\n";
    for (const auto& student : students) {
        std::string risk = RiskEngine::evaluateRisk(student.gpa, student.attendance);
        std::cout << "ID: " << student.id << " | Name: " << student.name 
                  << " | Risk Level: " << risk << "\n";
    }

    return 0;
}
