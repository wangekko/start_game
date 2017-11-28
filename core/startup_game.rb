class StartupGame
  attr_accessor :week

  def initialize
    @week = 0
    @game = Lol.new
    @role  = Bob.new
    @rank = Number.new
  end

  def openning
    puts Rainbow('『2017又是一幅好光景啊』').yellow + ', 背着行囊走进了大学校园, 匆匆忙忙搞定了所有的事情, 环顾四周已是深夜。'
    puts '你身心疲惫的躺在床上, 心想' + Rainbow('『终于脱离苦海，来到了天堂,我要放飞自我』').yellow + '窗外灌木丛里的野狗叫了一声。' 
    puts '第二天起床之后, 转了大半天, 发现无所事事, 你决定玩玩游戏打发时间, 你打开了电脑选择了一款游戏, 叫做： '
    @game.name = STDIN.gets.chomp
    puts '你决定给你的游戏角色取名： '
    @role.name = STDIN.gets.chomp
    puts '你进入了' + @game.name + ', 查看了' + @role.name + '的信息：' + @rank.level + '。' 
    puts '游戏愉快！'
    Keyboard.next
  end

  def run
    mvp
  end

  private

  def mvp
    '在' + @game.name + '你操控着' + @role.name + '遇神杀神, 遇佛杀佛, 度过了愉快的一天。'
    Keyboard.next
  end
end