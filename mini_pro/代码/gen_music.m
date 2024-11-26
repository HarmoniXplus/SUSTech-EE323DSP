function wave_music = gen_music(tone, scale, noctave, rising, rhythm, fs)
t = linspace(0, sum(rhythm), fs*sum(rhythm));
l = length(tone);
wave_segments = cell(1,l);
for m=1:l
    wave_segments{m} = gen_wave(tone(m),scale,noctave(m),rising(m),rhythm(m),fs);
end
wave_music = cell2mat(wave_segments);
figure
plot(t,wave_music)
xlabel('t/s');
ylabel('Amplitude')
title('music wave')
end

