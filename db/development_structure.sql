CREATE TABLE "recepes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "type_id" integer, "description" text, "ingredients" text, "created_at" datetime, "updated_at" datetime, "content_type" varchar(255), "picture" blob);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "types" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20140316172426');

INSERT INTO schema_migrations (version) VALUES ('20140316175723');

INSERT INTO schema_migrations (version) VALUES ('20140401082429');

INSERT INTO schema_migrations (version) VALUES ('20140401082636');