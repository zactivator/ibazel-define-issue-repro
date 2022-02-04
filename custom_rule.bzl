
def custom_rule(name, srcs, outs):
    native.genrule(
        name = name,
        srcs = srcs,
				outs = outs,
				cmd = "sed $(replacement) $< > $@",
        executable = 1,
    )
