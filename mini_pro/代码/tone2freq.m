function freq = tone2freq(tone, scale, noctave, rising)  
% tone: 输入数字音符，数值范围1到7 
% noctave: 高或低八度的数量，数值范围整数。0表示中音，正数表示高noctave个八度，负数为低noctave个八度 
% rising: 升或降调。1为升，-1为降，0无升降调 
% scale: 调号
% freq为输出的频率 

% 不同调号主音频率表
freq_base = struct('C', 261.5, 'D', 293.5, 'E', 329.5, 'F', 349, 'G', 391.5, 'A', 440, 'B', 494);

% 获取基准音频
if isfield(freq_base, scale)
    base_freq = freq_base.(scale);
else
    error('Invalid scale input');
end

% 计算频率
shift = (tone - 1) * 2 + rising; % 音符的位移
if tone <= 3 && tone > 0
    freq = base_freq * 2^noctave * 2^(shift / 12);  
elseif tone > 3
    freq = base_freq * 2^noctave * 2^((shift - 1) / 12);
elseif tone==0
    freq = 0;
end
end