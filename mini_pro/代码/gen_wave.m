function waves = gen_wave(tone, scale, noctave, rising, rhythm, fs) 
% tone为数字音符，scale为调号, noctave为高低八度数量，rising为升降调，rhythm为节拍，即每个音符持续时长，fs为采样频率
f = tone2freq(tone, scale, noctave, rising);
t = linspace(0,rhythm,fs*rhythm);
waves = sin(2*pi*f*t);
%plot(t,waves)
%sound(waves,fs)
end