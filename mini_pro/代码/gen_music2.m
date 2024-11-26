function wave_music = gen_music2(tone, scale, noctave, rising, rhythm, fs, k, p)
t = linspace(0, sum(rhythm), fs*sum(rhythm));
l = length(tone);
wave_segments = cell(1,l);
for m=1:l-1
    wave_segments{m} = gen_wave2(tone(m),scale,noctave(m),rising(m),rhythm(m),fs, k);
    if p(m) == 0 && p(m+1) == 0
        tp = linspace(0, rhythm(m), fs*rhythm(m));
        wave_segments{m} = wave_segments{m}.*exp(-tp/rhythm(m)) ;
    elseif p(m) == 1 && p(m+1) == 0
        tp = linspace(0, rhythm(m)+rhythm(m-1), fs*(rhythm(m)+rhythm(m-1)));
        wave_segments{m} = [wave_segments{m-1},wave_segments{m}].*exp(-tp/(rhythm(m)+rhythm(m-1))) ;
        wave_segments{m-1} = [];
    end
end
wave_segments{l} = gen_wave2(tone(l),scale,noctave(l),rising(l),rhythm(l),fs, k);
tp = linspace(0, rhythm(l), fs*rhythm(l));
wave_segments{l} = wave_segments{l}.*exp(-tp/rhythm(l)) ;

wave_music = cell2mat(wave_segments);
figure
plot(t,wave_music)
xlabel('t/s');
ylabel('Amplitude')
title('music wave(improved)')
end


