function conky_gpu_usage_s()
    local f = assert(io.popen('nvidia-smi --query-gpu utilization.gpu --format=csv | tail -n 1 | cut -d" " -f1', 'r'))
    local s = assert(f:read('*a'))
    f:close()
    return string.gsub(s, "[\r\n]", "")
end

function conky_gpu_usage_n()
    local s = conky_gpu_usage_s()
    return math.tointeger(s)
end
