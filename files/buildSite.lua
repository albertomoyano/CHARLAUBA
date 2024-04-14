local counter = 0
filter_settings "staticsite" {
  site_root = outdir,
  map = {
    [".css$"] = "/css/"
  },
  header = {
    layout="post",
    weight = function(parameters, dom)
      counter = counter + 1
      return counter
    end,
    date = function(parameters, dom)
      return os.date("!%Y-%m-%d %T", parameters.time)
    end
  }
}

