# frozen_string_literal: true

require 'html_tam/version'

module HtmlTam
  class Error < StandardError; end
  # Your code goes here...
end

class Page_creater
  def welcome
    page = File.open('tamagochi.html', 'w')
    page.puts '<!DOCTYPE html>'
    page.puts "<html lang='en'>"
    page.puts '<head>'
    page.puts "<meta charset='UTF-8'>"
    page.puts "<title>hw3</title>    <link rel='stylesheet' href='main.css'>"
    page.puts '</head>'
    page.puts '<body>'
    page.puts "<div id='enter_name'>  chose you animal name in console   </div>"
    page.puts '</body>'
    page.puts '</html>'
    page.puts '<script> setInterval(()=>{window.location.reload()}, 1000) </script>'
    page.close
  end

  def help
    page = File.open('tamagochi.html', 'w')
    page.puts '<!DOCTYPE html>'
    page.puts "<html lang='en'>"
    page.puts '<head>'
    page.puts "<meta charset='UTF-8'>"
    page.puts "<title>hw3</title>    <link rel='stylesheet' href='main.css'>"
    page.puts '</head>'
    page.puts "<div id = 'help'>"
    page.puts "<p class = 'help'>|------------------------------------------------HELP-----------------------------------------------|</p>"
    page.puts "<p class = 'help'>|                     To get out press ENTER                                                        |</p>"
    page.puts "<p class = 'help'>|                                                                                                   |</p>"
    page.puts "<p class = 'help'>|-COMANDS:                                                                                          |</p>"
    page.puts "<p class = 'help'>| if you chose                                                                                      |</p>"
    page.puts "<p class = 'help'>| *(play)[interest + 1; stomach - 1; sleepiness -= 1] Starting event where you play with you pet.   |</p>"
    page.puts "<p class = 'help'>|     Be wary it's 10% chance of failure                                                            |</p>"
    page.puts "<p class = 'help'>| *(feed)[ stomach + 1; sleepiness -= 1] Starting event where you feed you pet.                     |</p>"
    page.puts "<p class = 'help'>|     It's 50% chance of +1 hp                                                                      |</p>"
    page.puts "<p class = 'help'>| *(wash)[ interest - 1; purity = max] Starting event where you wash you pet.                       |</p>"
    page.puts "<p class = 'help'>| *(walk)[ interest + 1; purity -= 1 ;stomach - 1] Starting event where you walking with pet.       |</p>"
    page.puts "<p class = 'help'>|     when pet intelect < 2                                                                         |</p>"
    page.puts "<p class = 'help'>|         -20% [stomach - 3; hp - 1] 20%[stomach + 2; hp + 1] 20%[stomach max; hp max]              |</p>"
    page.puts "<p class = 'help'>|     when pet 2 < intelect < 4                                                                     |</p>"
    page.puts "<p class = 'help'>|         - 33%[stomach + 2; hp + 1] 33%[stomach max; hp max]                                       |</p>"
    page.puts "<p class = 'help'>|     when pet intelect > 4                                                                         |</p>"
    page.puts "<p class = 'help'>|         - 50%[stomach max; hp max]                                                                |</p>"
    page.puts "<p class = 'help'>| *(train)[ intelect + 1; stomach - 1] Starting event where you train the pet.                      |</p>"
    page.puts "<p class = 'help'>|         20% [ hp - 2] 20%[intelect + 2; hp + 1] 20%[intelect + 2; hp + 2]                         |</p>"
    page.puts "<p class = 'help'>| *(look_at)[ all stat -1] Starting event where you killing pet.                                    |</p>"
    page.puts "<p class = 'help'>| *(put_to_sleep)[ sleepiness max; interest - 1; stomach - 1;] Active only at night.                |</p>"
    page.puts "<p class = 'help'>|         Starting event where you pet rest and skip day.                                           |</p>"
    page.puts "<p class = 'help'>|         It's 33% to intelect -1                                                                   |</p>"
    page.puts "<p class = 'help'>|                                                                                                   |</p>"
    page.puts "<p class = 'help'>| ELSE:                                                                                             |</p>"
    page.puts "<p class = 'help'>| - When purity or stomach = 0 every day hp -1                                                      |</p>"
    page.puts "<p class = 'help'>| - When intelect or interest < 2 pet can run away                                                  |</p>"
    page.puts "<p class = 'help'>|                                                                                                   |</p>"
    page.puts "<p class = 'help'>|To get out press ENTER                                                                             |</p>"
    page.puts "<p class = 'help'>|---------------------------------------------------------------------------------------------------|</p>"
    page.puts '</div>'
    page.puts '</body>'
    page.puts '</html>'
    page.puts '<script> setInterval(()=>{window.location.reload()}, 1000) </script>'
    page.close
  end

  def create_page(_page_name, pet, timer)
    page = File.open('tamagochi.html', 'w')
    page.puts '<!DOCTYPE html>'
    page.puts "<html lang='en'>"
    page.puts '<head>'
    page.puts "<meta charset='UTF-8'>"
    page.puts "<title>hw3</title>    <link rel='stylesheet' href='main.css'>"
    page.puts '</head>'
    page.puts '<body>'
    out_info(pet, timer, page)
    page.puts '</body>'
    page.puts '</html>'
    page.puts '<script> setInterval(()=>{window.location.reload()}, 1000) </script>'
    page.close
  end

  def crate_notification(_pet, _timer, page)
    page.puts "<div id = 'notification1'>  #{$notification_event} </div>"
    page.puts "<div id = 'notification2'>  #{$notification_action} </div>"
  end

  def create_status(pet, timer, page)
    page.puts "<div id='create_status'>"
    page.puts "<div id ='time'>  Time = #{timer.day_period} </div>"
    page.puts "<div id ='pet_name'>  #{pet.name}  status </div>"
    page.puts "<div id ='hp'>  |  hp  | = #{pet.hp} / #{timer.max_hp}  status </div>"
    page.puts "<div id ='stomach'>  | stomach | = #{pet.stomach} / #{timer.max_stomach}  status </div>"
    page.puts "<div id ='purity'>  | purity | = #{pet.purity} / #{timer.max_purity}  status </div>"
    page.puts "<div id ='interes'>  |interes| = #{pet.interest} / #{timer.max_interest}  status </div>"
    page.puts "<div id ='sleepiness'>  |sleepiness| = #{pet.sleepiness} / #{timer.max_sleepiness}  status </div>"
    page.puts "<div id ='intelect'>  |intelect| = #{pet.intelect} / #{timer.max_intelect}  status </div>"
    page.puts '</div>'
  end

  def ui_img(page)
    page.puts "<div id='render'>"
    page.puts "<div class='pet_ui'>    ,</div>"
    page.puts "<div class='pet_ui'>       |`-.__</div>"
    page.puts "<div class='pet_ui'>       / ' _/</div>"
    page.puts "<div class='pet_ui'>      ****`</div>"
    page.puts "<div class='pet_ui'>     /    }</div>"
    page.puts "<div class='pet_ui'>    /  1 /</div>"
    page.puts "<div class='pet_ui'>1 /`   lll</div>"
    page.puts "<div class='pet_ui'>`l     /_ll</div>"
    page.puts "<div class='pet_ui'>  `~~~~~``~`</div>"
    page.puts '</div>'
  end

  def action_ch(page)
    if $game_over
      page.puts "<div id= 'chose'>pres ENTER to start new game
                   or
0 and ENTER to escape '</div>"
    else


      page.puts "<div id='chose'>Chose what you wanna do in teminal</div>"
      page.puts $chose.to_s
    end
  end

  def out_info(pet, timer, page)
    crate_notification(pet, timer, page)
    ui_img(page)
    create_status(pet, timer, page)
    action_ch(page)
  end

  def death
    page = File.open('tamagochi.html', 'w')
    page.puts '<!DOCTYPE html>'
    page.puts "<html lang='en'>"
    page.puts '<head>'
    page.puts "<meta charset='UTF-8'>"
    page.puts "<title>hw3</title>    <link rel='stylesheet' href='main.css'>"
    page.puts '</head>'
    page.puts '<body>'
    page.puts "<div class='sad_end'> ,-=-.</div>"
    page.puts "<div class='sad_end'>/  +  l</div>"
    page.puts "<div class='sad_end'>| ~~~ |</div>"
    page.puts "<div class='sad_end'>|R.I.P|</div>"
    page.puts "<div class='sad_end'>|_____|</div>"
    action_ch(page)
    page.puts '</body>'
    page.puts '</html>'
    page.puts '<script> setInterval(()=>{window.location.reload()}, 1000) </script>'
    page.close
  end

  def end_over
    page = File.open('tamagochi.html', 'w')
    page.puts '<!DOCTYPE html>'
    page.puts "<html lang='en'>"
    page.puts '<head>'
    page.puts "<meta charset='UTF-8'>"
    page.puts "<title>hw3</title>    <link rel='stylesheet' href='main.css'>"
    page.puts '</head>'
    page.puts '<body>'
    page.puts "<div class='sad_end'>_____   ___  ___  ___ _____</div>"
    page.puts "<div class='sad_end'>|  __ l / _ l |  l/  ||  ___|</div>"
    page.puts "<div class='sad_end'>| |  l// /_l l| .  . || |__</div>"
    page.puts "<div class='sad_end'>| | __ |  _  || |l/| ||  __|</div>"
    page.puts "<div class='sad_end'>| |_l l| | | || |  | || |___</div>"
    page.puts "<div class='sad_end'>l____/l_| |_/l_|  |_/l____/</div>"
    page.puts "<div class='sad_end'>    _____  _   _ ___________</div>"
    page.puts "<div class='sad_end'>|  _  || | | |  ___| ___ l</div>"
    page.puts "<div class='sad_end'>| | | || | | | |__ | |_/ /</div>"
    page.puts "<div class='sad_end'>| | | || | | |  __||    /</div>"
    page.puts "<div class='sad_end'>l l_/ /l l_/ / |___| |l l</div>"
    page.puts "<div class='sad_end'>l___/  l___/l____/l_| l_|</div>"
    action_ch(page)
    page.puts '</body>'
    page.puts '</html>'
    page.puts '<script> setInterval(()=>{window.location.reload()}, 1000) </script>'
    page.close
  end
end
