V=3.0
n=1.0
Vbar=V/n
T=370.
R=0.083145
P=R*T/Vbar
cat("Ideal gas law ",P,"\n")
A=16.44
B=0.07245
P=R*T/(Vbar-B)-A/(Vbar*(Vbar+B)+B*(Vbar-B))
cat("Peng-Robinson equation of state ",P,"\n")
