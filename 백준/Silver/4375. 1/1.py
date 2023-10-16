while True:
    try:
        n = int(input())
    except:
        break
        
    i = 1
    num = 0
    while True:
        num = 10 * num + 1
        num = num % n
        if num == 0:
            print(i)
            break
        else:
            i += 1