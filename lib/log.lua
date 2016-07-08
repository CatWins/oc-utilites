local log = {}

function log.info(msg)
  print("[INFO] "..msg)
end

function log.warn(msg)
  print("[WARNING] "..msg)
end

function log.error(msg)
  print("[ERROR] "..msg)
end

return log
