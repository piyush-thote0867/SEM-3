#include<iostream> 
using namespace std;
#include<cmath>
double f(double x){
    return pow(2,-x)+exp(x)+2*cos(x)-6; //
}
void root(double a,double b){
    if(f(a)*f(b)>=0){
        cout<<"You have not assumed right a and b"<<endl;
        return;
    }
    if(b-a<0.0001){
        cout<<"The root is : "<<(a+b)/2<<endl;
        return;
    }
    double c=a; 
  
       
        c = (a+b)/2;
       
        if (f(a)*f(c)<0){
            
            root(a,c);
        }
        else if (f(c)*f(b) < 0)
           root(c,b);

      
    }
   

int main(){
    double a,b,c;
  
    cout<<"Enter the value of a and b"<<endl;
    cin>>a>>b;
     root(a,b);
    
  
    return 0;   
}
