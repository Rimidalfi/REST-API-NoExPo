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

SELECT * FROM articles WHERE id = 2;

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
        'Angular vs. React: Eine umfassende Analyse der beiden führenden JavaScript-Frameworks',
        'Die Wahl des richtigen JavaScript-Frameworks ist entscheidend für den Erfolg bei der Entwicklung von Webanwendungen. Angular und React sind zwei der am häufigsten verwendeten und beliebtesten Frameworks, aber sie haben unterschiedliche Ansätze und Eigenschaften. In diesem Artikel werden wir einen tiefen Einblick in Angular und React werfen, um Ihnen bei der Entscheidung zu helfen, welches Framework am besten zu Ihren Anforderungen passt.',
        'https://images.ctfassets.net/oz7f6gt77mhs/6t9eQKymHZCWXTVbkVSKSz/e7292af46bfa2aa84ea0be84ae43fb33/angualrvsreact_313015295b.jpg',
        'Angular vs React',
        'Was ist Angular?
Angular ist ein Open-Source-Framework, das von Google entwickelt wurde. Es verwendet TypeScript, eine strikte Obermenge von JavaScript, um Entwicklern eine stärkere Typisierung und bessere Werkzeuge zur Code-Analyse zu bieten. Angular ist ein vollständiges Framework, das alle benötigten Tools und Bibliotheken für die Entwicklung von Webanwendungen in einem Paket bereitstellt. Es folgt dem MVC (Model-View-Controller)-Architekturmuster und bietet eine umfassende und einheitliche Lösung für den gesamten Entwicklungsprozess.
Was ist React?
React ist eine JavaScript-Bibliothek, die von Facebook entwickelt wurde. Im Gegensatz zu Angular ist React leichtgewichtiger und konzentriert sich hauptsächlich auf die Erstellung von Benutzeroberflächen. React verwendet JSX (JavaScript XML) und ermöglicht die Verwendung von JavaScript zur Definition von Benutzeroberflächenelementen. Es basiert auf einer virtuellen DOM-Technologie, die die Aktualisierung der Benutzeroberfläche effizienter gestaltet. React ist ein flexibles Framework, das gut in bestehende Projekte integriert werden kann.
',
    );

UPDATE articles
SET
    intro = 'bla',
    article = 'blub'
WHERE id = 1;