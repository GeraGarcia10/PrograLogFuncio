import HRL.Robot
import HRL.Control

-- Definimos el robot
robot :: Robot
robot = Robot
  { name = "Mi robot"
  , shape = Rectangle (1, 0.5)
  , mass = 10
  }

--Definimos obstaculos
obstacles :: [Rectangle]
obstacles = [Rectangle (2, 1) at (0, 0),
            Rectangle (1, 2) at (5, 0)]


-- Definimos el controlador
controller :: Robot -> Control
controller robot = PDControl
  { kp = 10
  , kd = 5
  }

-- Simulamos el robot durante 10 segundos
main = do
  sim <- newSimulation robot
  forT 10 $ do
    u <- controller robot (simState sim)
    simStep sim u
    putStrLn $ show (simState sim)

