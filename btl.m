% %ghi am thong tin
% fs = 44100;  
% r = audiorecorder(fs, 16, 1);
% disp('bat dau ghi am');
% recordblocking(r,12);
% disp('ket thuc'); 
% g = getaudiodata(r); 
% sound(g,fs);
% audiowrite('orig_input.wav', g, fs);

% tao giai dieu cho file ghi am
[x, fs] = audioread('orig_input_hoang.wav');           
[y, fy] = audioread('soundtrack.wav');
size(x) 
size(y)
  

z=x+y(1:length(456704)); 
for i = 1:1 
    for j = 1:309248 
            z(j,i) = x(j,i) + y(i+j); 
    end 
end 
sound(z,fs); 
audiowrite('melody.wav', z, fs); 

% %fft
% [y,fs] = audioread('melody.wav'); 
% xlabel('Frequency(Hz)'); 
% figure(1) 
% N = fs; 
% transform = fft(y,N)/N; 
% magTransform = abs(transform); 
% faxis = linspace(-N/2,N/2,N); 
% plot(faxis,fftshift(magTransform)); 
% title('FFT'); 
% xlabel('Frequency(Hz)'); 
% 
% 
% %spectogram
% win = 128; 
% hop = win/2;             
% nfft = win; 
% figure(2) 
% spectrogram(y,win,hop,nfft,fs,'yaxis'); 
% yt = get(gca,'YTick');   
% set(gca,'YTickLabel', sprintf('%.0f|',yt)); 
% title('Spectrogram'); 
