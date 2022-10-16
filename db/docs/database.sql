-- SQL dump generated using DBML (dbml-lang.org)
-- Database: PostgreSQL
-- Generated at: 2022-10-15T06:52:38.362Z

CREATE TABLE "users" (
  "id" BIGSERIAL PRIMARY KEY NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp NOT NULL,
  "deleted_at" timestamp DEFAULT null,
  "name" varchar,
  "surname" varchar,
  "email" varchar,
  "phone_number" varchar
);

CREATE TABLE "tokens" (
  "id" BIGSERIAL PRIMARY KEY NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp NOT NULL,
  "deleted_at" timestamp DEFAULT null,
  "user_id" bigint,
  "refresh_token" varchar
);

COMMENT ON TABLE "users" IS 'ข้อมูลผู้ใช้งาน';

COMMENT ON COLUMN "users"."id" IS 'ไอดี';

COMMENT ON COLUMN "users"."created_at" IS 'วันเวลาที่สร้าง';

COMMENT ON COLUMN "users"."updated_at" IS 'วันเวลาที่อัพเดตล่าสุด';

COMMENT ON COLUMN "users"."deleted_at" IS 'วันเวลาที่ลบ';

COMMENT ON COLUMN "users"."name" IS 'ชื่อ';

COMMENT ON COLUMN "users"."surname" IS 'นามสกุล';

COMMENT ON COLUMN "users"."email" IS 'อีเมล';

COMMENT ON COLUMN "users"."phone_number" IS 'เบอร์โทร';

COMMENT ON TABLE "tokens" IS 'ข้อมูล Token';

COMMENT ON COLUMN "tokens"."id" IS 'ไอดี';

COMMENT ON COLUMN "tokens"."created_at" IS 'วันเวลาที่สร้าง';

COMMENT ON COLUMN "tokens"."updated_at" IS 'วันเวลาที่อัพเดตล่าสุด';

COMMENT ON COLUMN "tokens"."deleted_at" IS 'วันเวลาที่ลบ';

COMMENT ON COLUMN "tokens"."user_id" IS 'รหัสผู้ใช้งาน';

COMMENT ON COLUMN "tokens"."refresh_token" IS 'รีเฟรช Token';
