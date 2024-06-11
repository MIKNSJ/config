import os
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys

directoryPath = r"/Documents/Progamming/Visual Studio/Drivers";
os.environ["PATH"] += directoryPath;
driver = webdriver.Firefox();

driver.get("https://www.calculatorsoup.com/calculators/math/modulo-calculator.php");
driver.implicitly_wait(3);

dividend = driver.find_element(By.XPATH, "//*[@id='dividend']");
divisor = driver.find_element(By.XPATH, "//*[@id='divisor']");
calculate_button = driver.find_element(By.XPATH, "//*[@id='calculateButton']");

dividend.send_keys(Keys.ARROW_RIGHT);
dividend.send_keys(Keys.BACK_SPACE);
dividend.send_keys(10);

divisor.send_keys(Keys.ARROW_RIGHT);
divisor.send_keys(Keys.BACK_SPACE);
divisor.send_keys(5);

calculate_button.click();
result = driver.find_element(By.ID,"answer");
answer = result.find_element(By.CLASS_NAME,"alignCenter");
print(answer.text);