%getting time period
Am=2; 
Ac=4; 
fm=1000;
fc=10^8; 
t=(0:1/10^9:0.006); 
N=length(t); 
f=linspace(-10^9/2,10^9/2,N);

%message signal
m_t = Am*sin(2*pi*fm*t); 
M_F=abs(fft(m_t,N)); 
figure();
plot(f,M_F/N);
title("message signal in frequency domain");
xlabel("f");
ylabel("M(f)");
grid on;

%carrier signal
c_t = Ac*sin(2*pi*fc*t); 
C_F=abs(fft(c_t,N)); 
figure();
plot(f,(C_F/N));
title("carrier signal in frequency domain");
xlabel("f");
ylabel("C(f)");
grid on;

%DBS-SC Signal
mp = 2;
y_t=Ac*(mp*sin(2*pi*fm*t)).*sin(2*pi*fc*t); 
y_F=abs(fft(y_t,N)); 
figure();
plot(f,(y_F/N));
title("DSB-SC signal in frequency domain");
xlabel("f");
ylabel("Y(f)");
grid on;