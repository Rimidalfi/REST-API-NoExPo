CREATE TABLE
    articles (
        id SERIAL PRIMARY KEY,
        author VARCHAR(255),
        title VARCHAR(255) NOT NULL,
        creationdate DATE,
        intro TEXT,
        img_url VARCHAR(255),
        img_description VARCHAR(255),
        article TEXT
    );

ALTER TABLE articles
ALTER COLUMN creationdate
SET DEFAULT CURRENT_TIMESTAMP;

SELECT * FROM articles;

INSERT INTO
    articles (
        author,
        title,
        intro,
        img_url,
        img_description,
        article
    )
VALUES (
        'Björn Wolske',
        'Das Imposter-Syndrom bei Entwicklern: Wenn du dich wie ein Betrüger fühlst',
        'Die Welt der Softwareentwicklung ist geprägt von ständigem Lernen, schnellen Veränderungen und anspruchsvollen Projekten. Viele Entwickler, sowohl erfahrene als auch Anfänger, kennen ein gemeinsames Gefühl, das sie immer wieder heimsucht: das Imposter-Syndrom. Das Imposter-Syndrom ist ein psychologisches Phänomen, bei dem Menschen, trotz ihrer Erfolge und Fähigkeiten, das Gefühl haben, Betrüger zu sein und ihre Leistungen als unwirklich oder unverdient anzusehen. In diesem Artikel werden wir uns genauer mit dem Imposter-Syndrom bei Entwicklern befassen und Strategien zur Bewältigung dieses Gefühls besprechen.',
        'https://images.ctfassets.net/oz7f6gt77mhs/5643LNfjLNH1mVnYpRK19p/c9b6f9656e378e28eac30c07bbbd4404/1_WcKhioOzmMpJvvbZFm986Q.jpg',
        'Imposter Syndrom Picture',
        'Was ist das Imposter-Syndrom?
Das Imposter-Syndrom ist ein psychologisches Phänomen, das erstmals in den 1970er Jahren von den Psychologinnen Pauline Clance und Suzanne Imes beschrieben wurde. Es betrifft Menschen, die trotz objektiver Beweise für ihre Fähigkeiten und Erfolge das anhaltende Gefühl haben, dass sie eigentlich Betrüger sind und nicht wirklich kompetent in dem sind, was sie tun. Dieses Gefühl des "Sich-selbst-Betrügens" kann zu Stress, Angst und einem geringen Selbstwertgefühl führen.
'
    );

UPDATE articles
SET
    intro = 'bla',
    article = 'blub'
WHERE id = 1;