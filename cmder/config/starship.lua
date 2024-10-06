os.setenv('STARSHIP_CONFIG', 'C:\\Users\\User\\Github\\My_Setup\\starship\\starship_cmder.toml')
os.setenv('STARSHIP_CACHE', 'C:\\Users\\User\\Data\\starship')

function starship_transient_prompt_func(prompt)
  return io.popen("starship module character"
    .." --keymap="..rl.getvariable('keymap')
  ):read("*a")
end

load(io.popen('starship init cmd'):read("*a"))()