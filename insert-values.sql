INSERT INTO website
VALUES (1, "https://github.com/", "GitHub");
INSERT INTO website
VALUES (
        2,
        "https://blackboard.hartford.edu/",
        "UHart Blackboard"
    );
INSERT INTO website
VALUES (3, "https://www.hackthebox.eu/", "HTB");
INSERT INTO website
VALUES (
        4,
        "http://keitheagleson.dev",
        "Personal Website - keitheagleson.dev"
    );
INSERT INTO website
VALUES (5, "https://youtube.com/", "YouTube");
INSERT INTO website
VALUES (6, "https://ebay.com/", "eBay");
INSERT INTO website
VALUES (7, "http://reddit.com/", "Reddit");
INSERT INTO website
VALUES (8, "https://facebook.com/", "Facebook");
INSERT INTO website
VALUES (9, "https://twitter.com/", "Twitter");
INSERT INTO user
VALUES (
        1,
        1,
        "keith-E",
        "Keith",
        "Eagleson",
        "keagleson28@gmail.com",
        AES_ENCRYPT("123456", "secretpass"),
        "Main GitHub account."
    );
INSERT INTO user
VALUES (
        1,
        2,
        "eagle-playground",
        "Jim",
        "Bob",
        "junkeamil@gmail.com",
        AES_ENCRYPT("1234", "secretpass"),
        "GitHub sandbox account."
    );
INSERT INTO user
VALUES (
        2,
        1,
        "keagleson",
        "Keith",
        "Eagleson",
        "keagleson@hartford.edu",
        AES_ENCRYPT("12345678", "secretpass"),
        "UHart BlackBoard account."
    );
INSERT INTO user
VALUES (
        3,
        1,
        "h4x0r",
        "Keith",
        "Eagleson",
        "obscureemail@gmail.com",
        AES_ENCRYPT("4!2#qwerTo$2", "secretpass"),
        "Practice PenTesting."
    );
INSERT INTO user
VALUES (
        4,
        1,
        "admin",
        "Keith",
        "Eagleson",
        "keagleson28@gmail.com",
        AES_ENCRYPT("1234566", "secretpass"),
        "Admin account for personal/portfolio website."
    );
INSERT INTO user
VALUES (
        5,
        1,
        "EagleTV",
        "Keith",
        "Eagleson",
        "eagletv@gmail.com",
        AES_ENCRYPT("1234567", "secretpass"),
        "YouTube channel."
    );
INSERT INTO user
VALUES (
        6,
        1,
        "keithBuysStuff",
        "Keith",
        "Eagleson",
        "keagleson28@gmail.com",
        AES_ENCRYPT("asdf123", "secretpass"),
        "eBay - Buy things I don't need."
    );
INSERT INTO user
VALUES (
        7,
        1,
        "SuperCoolUsername",
        "Anon",
        "Ymous",
        "fakeemail@hotmail.com",
        AES_ENCRYPT("123456asdf", "secretpass"),
        "Look at cat pictures."
    );
INSERT INTO user
VALUES (
        8,
        1,
        "keagleson28@gmail.com",
        "Keith",
        "Eagleson",
        "keagleson28@gmail.com",
        AES_ENCRYPT("1a3b4c5d6", "secretpass"),
        "Delete Facebook."
    );