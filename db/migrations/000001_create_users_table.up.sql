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

COMMENT ON TABLE "users" IS 'ข้อมูลผู้ใช้งาน';

COMMENT ON COLUMN "users"."id" IS 'ไอดี';

COMMENT ON COLUMN "users"."created_at" IS 'วันเวลาที่สร้าง';

COMMENT ON COLUMN "users"."updated_at" IS 'วันเวลาที่อัพเดตล่าสุด';

COMMENT ON COLUMN "users"."deleted_at" IS 'วันเวลาที่ลบ';

COMMENT ON COLUMN "users"."name" IS 'ชื่อ';

COMMENT ON COLUMN "users"."surname" IS 'นามสกุล';

COMMENT ON COLUMN "users"."email" IS 'อีเมล';

COMMENT ON COLUMN "users"."phone_number" IS 'เบอร์โทร';