# godotgame
Игра 3 линии

Главный Персонаж стоит на месте , монстры идут на встречу.
Цель продержаться н волн.
- Монстры идут волнами 
- Определенные способности позволяют узнать состав волны

Player
У персонажа есть :
- Состояние State возможность двигаться влево, вправо, всего 3 полосы
-- Анимация 
    ожидание (idle)
  , Шаг влево (step_left)
  , Шаг враво (step_right) , 
  , перезарядка (reload_ammp)
  , заточить нож
  , выстрел (rifle_attack)
  , атака ножом (knife_attack)
  , ранение (wound)
  , смерть (die, dead)
  , применить способность(apply_skill_1...n)
  , Движение (move)
  , Защита (defend)
  , Прыжок (jump)
  , Качается stagger
  
-- Звуки Sounds
-- Позиция 1 , 2 , 3 (0)
- оружие Weapon (нож (knife), ружье(rifle), бомба (bomb))
- доп способности Skills
- Здоровье Health
- Защита Shield
- Золото
- Опыт

Player
CurrenState:State (Animation, Sound, Position)
CurrentLine(1,2,3)
AvailableWeapons:Weapon[]
CurrentWeapon:Weapon
Skills:Skill[]
CurrentSkill:Skill
Health:int
Shield:int
Gold:int
Exp:int


Enemy
У монстров есть :
- State
- Оружие Weapon
- Способности Skills
- Здоровье Health
- Защита Shield
- Поведение Behaviour
- Анимация (ожидание,движение вперед,  Шаг влево, Шаг враво, перезарядка, выстрел,  ранение, смерть)
- Звуки Sounds

Начальный экран
Конец игры
UI

Персонаж - монах

? Движение камеры, пауза
