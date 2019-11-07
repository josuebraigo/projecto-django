/*
Navicat PGSQL Data Transfer

Source Server         : Proyecto
Source Server Version : 90417
Source Host           : localhost:5432
Source Database       : BDEquipo
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90417
File Encoding         : 65001

Date: 2019-11-06 23:30:34
*/
CREATE DATABASE BDEquipo;
USE BDEquipo;

-- ----------------------------
-- Sequence structure for auth_group_id_seq
-- ----------------------------
DROP SEQUENCE "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_permissions_id_seq
-- ----------------------------
DROP SEQUENCE "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for auth_permission_id_seq
-- ----------------------------
DROP SEQUENCE "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 36
 CACHE 1;
SELECT setval('"public"."auth_permission_id_seq"', 36, true);

-- ----------------------------
-- Sequence structure for auth_user_groups_id_seq
-- ----------------------------
DROP SEQUENCE "public"."auth_user_groups_id_seq";
CREATE SEQUENCE "public"."auth_user_groups_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for auth_user_id_seq
-- ----------------------------
DROP SEQUENCE "public"."auth_user_id_seq";
CREATE SEQUENCE "public"."auth_user_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."auth_user_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for auth_user_user_permissions_id_seq
-- ----------------------------
DROP SEQUENCE "public"."auth_user_user_permissions_id_seq";
CREATE SEQUENCE "public"."auth_user_user_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for cliente_cliente_id_seq
-- ----------------------------
DROP SEQUENCE "public"."cliente_cliente_id_seq";
CREATE SEQUENCE "public"."cliente_cliente_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."cliente_cliente_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for compra_compra_id_seq
-- ----------------------------
DROP SEQUENCE "public"."compra_compra_id_seq";
CREATE SEQUENCE "public"."compra_compra_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."compra_compra_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for django_admin_log_id_seq
-- ----------------------------
DROP SEQUENCE "public"."django_admin_log_id_seq";
CREATE SEQUENCE "public"."django_admin_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for django_content_type_id_seq
-- ----------------------------
DROP SEQUENCE "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 12
 CACHE 1;
SELECT setval('"public"."django_content_type_id_seq"', 12, true);

-- ----------------------------
-- Sequence structure for django_migrations_id_seq
-- ----------------------------
DROP SEQUENCE "public"."django_migrations_id_seq";
CREATE SEQUENCE "public"."django_migrations_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 21
 CACHE 1;
SELECT setval('"public"."django_migrations_id_seq"', 21, true);

-- ----------------------------
-- Sequence structure for empleado_empleado_id_seq
-- ----------------------------
DROP SEQUENCE "public"."empleado_empleado_id_seq";
CREATE SEQUENCE "public"."empleado_empleado_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."empleado_empleado_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for inventario_inventario_id_seq
-- ----------------------------
DROP SEQUENCE "public"."inventario_inventario_id_seq";
CREATE SEQUENCE "public"."inventario_inventario_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."inventario_inventario_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for producto_producto_id_seq
-- ----------------------------
DROP SEQUENCE "public"."producto_producto_id_seq";
CREATE SEQUENCE "public"."producto_producto_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."producto_producto_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for proveedor_proveedor_id_seq
-- ----------------------------
DROP SEQUENCE "public"."proveedor_proveedor_id_seq";
CREATE SEQUENCE "public"."proveedor_proveedor_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."proveedor_proveedor_id_seq"', 3, true);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group";
CREATE TABLE "public"."auth_group" (
"id" int4 DEFAULT nextval('auth_group_id_seq'::regclass) NOT NULL,
"name" varchar(80) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
"id" int4 DEFAULT nextval('auth_group_permissions_id_seq'::regclass) NOT NULL,
"group_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
"id" int4 DEFAULT nextval('auth_permission_id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"content_type_id" int4 NOT NULL,
"codename" varchar(100) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "public"."auth_permission" VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO "public"."auth_permission" VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO "public"."auth_permission" VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO "public"."auth_permission" VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO "public"."auth_permission" VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO "public"."auth_permission" VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO "public"."auth_permission" VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO "public"."auth_permission" VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO "public"."auth_permission" VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO "public"."auth_permission" VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO "public"."auth_permission" VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO "public"."auth_permission" VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO "public"."auth_permission" VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO "public"."auth_permission" VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO "public"."auth_permission" VALUES ('19', 'Can add cliente', '7', 'add_cliente');
INSERT INTO "public"."auth_permission" VALUES ('20', 'Can change cliente', '7', 'change_cliente');
INSERT INTO "public"."auth_permission" VALUES ('21', 'Can delete cliente', '7', 'delete_cliente');
INSERT INTO "public"."auth_permission" VALUES ('22', 'Can add empleado', '8', 'add_empleado');
INSERT INTO "public"."auth_permission" VALUES ('23', 'Can change empleado', '8', 'change_empleado');
INSERT INTO "public"."auth_permission" VALUES ('24', 'Can delete empleado', '8', 'delete_empleado');
INSERT INTO "public"."auth_permission" VALUES ('25', 'Can add compra', '9', 'add_compra');
INSERT INTO "public"."auth_permission" VALUES ('26', 'Can change compra', '9', 'change_compra');
INSERT INTO "public"."auth_permission" VALUES ('27', 'Can delete compra', '9', 'delete_compra');
INSERT INTO "public"."auth_permission" VALUES ('28', 'Can add inventario', '10', 'add_inventario');
INSERT INTO "public"."auth_permission" VALUES ('29', 'Can change inventario', '10', 'change_inventario');
INSERT INTO "public"."auth_permission" VALUES ('30', 'Can delete inventario', '10', 'delete_inventario');
INSERT INTO "public"."auth_permission" VALUES ('31', 'Can add producto', '11', 'add_producto');
INSERT INTO "public"."auth_permission" VALUES ('32', 'Can change producto', '11', 'change_producto');
INSERT INTO "public"."auth_permission" VALUES ('33', 'Can delete producto', '11', 'delete_producto');
INSERT INTO "public"."auth_permission" VALUES ('34', 'Can add proveedor', '12', 'add_proveedor');
INSERT INTO "public"."auth_permission" VALUES ('35', 'Can change proveedor', '12', 'change_proveedor');
INSERT INTO "public"."auth_permission" VALUES ('36', 'Can delete proveedor', '12', 'delete_proveedor');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user";
CREATE TABLE "public"."auth_user" (
"id" int4 DEFAULT nextval('auth_user_id_seq'::regclass) NOT NULL,
"password" varchar(128) COLLATE "default" NOT NULL,
"last_login" timestamptz(6),
"is_superuser" bool NOT NULL,
"username" varchar(30) COLLATE "default" NOT NULL,
"first_name" varchar(30) COLLATE "default" NOT NULL,
"last_name" varchar(30) COLLATE "default" NOT NULL,
"email" varchar(254) COLLATE "default" NOT NULL,
"is_staff" bool NOT NULL,
"is_active" bool NOT NULL,
"date_joined" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO "public"."auth_user" VALUES ('1', 'pbkdf2_sha256$24000$kEzLB54oCvU9$ifbRd1rZLkAYI3YX9kGO4zOOUeiJlbnjtRphXiuJ3xE=', '2018-05-14 19:56:52.928094-05', 't', 'admon', '', '', 'chivasjosue.wero@gmail.com', 't', 't', '2018-04-19 18:57:00.203094-05');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user_groups";
CREATE TABLE "public"."auth_user_groups" (
"id" int4 DEFAULT nextval('auth_user_groups_id_seq'::regclass) NOT NULL,
"user_id" int4 NOT NULL,
"group_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user_user_permissions";
CREATE TABLE "public"."auth_user_user_permissions" (
"id" int4 DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass) NOT NULL,
"user_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for cliente_cliente
-- ----------------------------
DROP TABLE IF EXISTS "public"."cliente_cliente";
CREATE TABLE "public"."cliente_cliente" (
"id" int4 DEFAULT nextval('cliente_cliente_id_seq'::regclass) NOT NULL,
"tipo_cliente" varchar(50) COLLATE "default" NOT NULL,
"nombre" varchar(50) COLLATE "default" NOT NULL,
"rfc" varchar(13) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of cliente_cliente
-- ----------------------------

-- ----------------------------
-- Table structure for compra_compra
-- ----------------------------
DROP TABLE IF EXISTS "public"."compra_compra";
CREATE TABLE "public"."compra_compra" (
"id" int4 DEFAULT nextval('compra_compra_id_seq'::regclass) NOT NULL,
"neto" int4 NOT NULL,
"iva" int4 NOT NULL,
"total" int4 NOT NULL,
"numero_productos" int4 NOT NULL,
"empleado_id" int4,
"producto_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of compra_compra
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_admin_log";
CREATE TABLE "public"."django_admin_log" (
"id" int4 DEFAULT nextval('django_admin_log_id_seq'::regclass) NOT NULL,
"action_time" timestamptz(6) NOT NULL,
"object_id" text COLLATE "default",
"object_repr" varchar(200) COLLATE "default" NOT NULL,
"action_flag" int2 NOT NULL,
"change_message" text COLLATE "default" NOT NULL,
"content_type_id" int4,
"user_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
"id" int4 DEFAULT nextval('django_content_type_id_seq'::regclass) NOT NULL,
"app_label" varchar(100) COLLATE "default" NOT NULL,
"model" varchar(100) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "public"."django_content_type" VALUES ('1', 'admin', 'logentry');
INSERT INTO "public"."django_content_type" VALUES ('2', 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES ('3', 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES ('4', 'auth', 'user');
INSERT INTO "public"."django_content_type" VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES ('6', 'sessions', 'session');
INSERT INTO "public"."django_content_type" VALUES ('7', 'cliente', 'cliente');
INSERT INTO "public"."django_content_type" VALUES ('8', 'empleado', 'empleado');
INSERT INTO "public"."django_content_type" VALUES ('9', 'compra', 'compra');
INSERT INTO "public"."django_content_type" VALUES ('10', 'inventario', 'inventario');
INSERT INTO "public"."django_content_type" VALUES ('11', 'producto', 'producto');
INSERT INTO "public"."django_content_type" VALUES ('12', 'proveedor', 'proveedor');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_migrations";
CREATE TABLE "public"."django_migrations" (
"id" int4 DEFAULT nextval('django_migrations_id_seq'::regclass) NOT NULL,
"app" varchar(255) COLLATE "default" NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"applied" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO "public"."django_migrations" VALUES ('1', 'contenttypes', '0001_initial', '2018-04-19 16:31:30.059834-05');
INSERT INTO "public"."django_migrations" VALUES ('2', 'auth', '0001_initial', '2018-04-19 16:31:31.000676-05');
INSERT INTO "public"."django_migrations" VALUES ('3', 'admin', '0001_initial', '2018-04-19 16:31:31.684476-05');
INSERT INTO "public"."django_migrations" VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2018-04-19 16:31:31.760225-05');
INSERT INTO "public"."django_migrations" VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2018-04-19 16:31:31.872718-05');
INSERT INTO "public"."django_migrations" VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2018-04-19 16:31:31.902393-05');
INSERT INTO "public"."django_migrations" VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2018-04-19 16:31:31.938411-05');
INSERT INTO "public"."django_migrations" VALUES ('8', 'auth', '0004_alter_user_username_opts', '2018-04-19 16:31:32.006934-05');
INSERT INTO "public"."django_migrations" VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2018-04-19 16:31:32.036937-05');
INSERT INTO "public"."django_migrations" VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2018-04-19 16:31:32.043942-05');
INSERT INTO "public"."django_migrations" VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2018-04-19 16:31:32.071978-05');
INSERT INTO "public"."django_migrations" VALUES ('12', 'cliente', '0001_initial', '2018-04-19 16:31:32.135361-05');
INSERT INTO "public"."django_migrations" VALUES ('13', 'producto', '0001_initial', '2018-04-19 16:31:32.21125-05');
INSERT INTO "public"."django_migrations" VALUES ('14', 'empleado', '0001_initial', '2018-04-19 16:31:32.279804-05');
INSERT INTO "public"."django_migrations" VALUES ('15', 'compra', '0001_initial', '2018-04-19 16:31:32.563311-05');
INSERT INTO "public"."django_migrations" VALUES ('16', 'inventario', '0001_initial', '2018-04-19 16:31:32.699375-05');
INSERT INTO "public"."django_migrations" VALUES ('17', 'proveedor', '0001_initial', '2018-04-19 16:31:32.776414-05');
INSERT INTO "public"."django_migrations" VALUES ('18', 'sessions', '0001_initial', '2018-04-19 16:31:32.95796-05');
INSERT INTO "public"."django_migrations" VALUES ('19', 'producto', '0002_producto_proveedor', '2018-04-29 00:31:12.049068-05');
INSERT INTO "public"."django_migrations" VALUES ('20', 'empleado', '0002_auto_20180429_0103', '2018-04-29 01:03:39.8335-05');
INSERT INTO "public"."django_migrations" VALUES ('21', 'empleado', '0003_auto_20180429_0111', '2018-04-29 01:11:44.527364-05');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_session";
CREATE TABLE "public"."django_session" (
"session_key" varchar(40) COLLATE "default" NOT NULL,
"session_data" text COLLATE "default" NOT NULL,
"expire_date" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO "public"."django_session" VALUES ('5k639tz76mbs7gxri1hu38z2wxkqzugo', 'NmQ1ZGRmMWVjYWI2ZTA4ZjJlZGI3MGQ4NGU3YmI5NmU3NmYzMjc5ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI0N2NhMDk5NTkzZWRkNGYzNmFhMmIzMjJlOTA4ZmI3NDg2YjYzMWEzIn0=', '2018-05-28 19:56:53.162035-05');

-- ----------------------------
-- Table structure for empleado_empleado
-- ----------------------------
DROP TABLE IF EXISTS "public"."empleado_empleado";
CREATE TABLE "public"."empleado_empleado" (
"id" int4 DEFAULT nextval('empleado_empleado_id_seq'::regclass) NOT NULL,
"nombre" varchar(50) COLLATE "default" NOT NULL,
"direccion" varchar(50) COLLATE "default" NOT NULL,
"telefono_local" varchar(50) COLLATE "default" NOT NULL,
"telefono_movil" varchar(50) COLLATE "default" NOT NULL,
"fecha_nacimiento" varchar(50) COLLATE "default" NOT NULL,
"curp" varchar(50) COLLATE "default" NOT NULL,
"rfc" varchar(50) COLLATE "default" NOT NULL,
"nss" varchar(50) COLLATE "default" NOT NULL,
"sueldo" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of empleado_empleado
-- ----------------------------
INSERT INTO "public"."empleado_empleado" VALUES ('2', 'Karen Martínez', 'Isla Gomera #4153-I32', '33456213', '3313360899', '26/02/1998', 'MAHK980226MKCSNS03', 'MAHK980226HTK', '62919002234', '35000');

-- ----------------------------
-- Table structure for inventario_inventario
-- ----------------------------
DROP TABLE IF EXISTS "public"."inventario_inventario";
CREATE TABLE "public"."inventario_inventario" (
"id" int4 DEFAULT nextval('inventario_inventario_id_seq'::regclass) NOT NULL,
"cantidad" int4 NOT NULL,
"producto_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of inventario_inventario
-- ----------------------------

-- ----------------------------
-- Table structure for producto_producto
-- ----------------------------
DROP TABLE IF EXISTS "public"."producto_producto";
CREATE TABLE "public"."producto_producto" (
"id" int4 DEFAULT nextval('producto_producto_id_seq'::regclass) NOT NULL,
"nombre" varchar(50) COLLATE "default" NOT NULL,
"descripcion" varchar(50) COLLATE "default" NOT NULL,
"precio" int4 NOT NULL,
"stock" int4 NOT NULL,
"proveedor_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of producto_producto
-- ----------------------------

-- ----------------------------
-- Table structure for proveedor_proveedor
-- ----------------------------
DROP TABLE IF EXISTS "public"."proveedor_proveedor";
CREATE TABLE "public"."proveedor_proveedor" (
"id" int4 DEFAULT nextval('proveedor_proveedor_id_seq'::regclass) NOT NULL,
"empresa" varchar(50) COLLATE "default" NOT NULL,
"empleado" varchar(50) COLLATE "default" NOT NULL,
"rfc" varchar(13) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of proveedor_proveedor
-- ----------------------------
INSERT INTO "public"."proveedor_proveedor" VALUES ('2', 'Pepsi Co.', 'Arturo Rodríguez', 'PSCO43234FJMV');
INSERT INTO "public"."proveedor_proveedor" VALUES ('3', 'Lala', 'Juan Alberto López', 'LMAL293432');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_id_seq" OWNED BY "auth_group"."id";
ALTER SEQUENCE "public"."auth_group_permissions_id_seq" OWNED BY "auth_group_permissions"."id";
ALTER SEQUENCE "public"."auth_permission_id_seq" OWNED BY "auth_permission"."id";
ALTER SEQUENCE "public"."auth_user_groups_id_seq" OWNED BY "auth_user_groups"."id";
ALTER SEQUENCE "public"."auth_user_id_seq" OWNED BY "auth_user"."id";
ALTER SEQUENCE "public"."auth_user_user_permissions_id_seq" OWNED BY "auth_user_user_permissions"."id";
ALTER SEQUENCE "public"."cliente_cliente_id_seq" OWNED BY "cliente_cliente"."id";
ALTER SEQUENCE "public"."compra_compra_id_seq" OWNED BY "compra_compra"."id";
ALTER SEQUENCE "public"."django_admin_log_id_seq" OWNED BY "django_admin_log"."id";
ALTER SEQUENCE "public"."django_content_type_id_seq" OWNED BY "django_content_type"."id";
ALTER SEQUENCE "public"."django_migrations_id_seq" OWNED BY "django_migrations"."id";
ALTER SEQUENCE "public"."empleado_empleado_id_seq" OWNED BY "empleado_empleado"."id";
ALTER SEQUENCE "public"."inventario_inventario_id_seq" OWNED BY "inventario_inventario"."id";
ALTER SEQUENCE "public"."producto_producto_id_seq" OWNED BY "producto_producto"."id";
ALTER SEQUENCE "public"."proveedor_proveedor_id_seq" OWNED BY "proveedor_proveedor"."id";

-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING btree (name "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_0e939a4f" ON "public"."auth_group_permissions" USING btree (group_id);
CREATE INDEX "auth_group_permissions_8373b171" ON "public"."auth_group_permissions" USING btree (permission_id);

-- ----------------------------
-- Uniques structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_417f1b1c" ON "public"."auth_permission" USING btree (content_type_id);

-- ----------------------------
-- Uniques structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user
-- ----------------------------
CREATE INDEX "auth_user_username_6821ab7c_like" ON "public"."auth_user" USING btree (username "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table auth_user
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table auth_user
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_groups
-- ----------------------------
CREATE INDEX "auth_user_groups_0e939a4f" ON "public"."auth_user_groups" USING btree (group_id);
CREATE INDEX "auth_user_groups_e8701ad4" ON "public"."auth_user_groups" USING btree (user_id);

-- ----------------------------
-- Uniques structure for table auth_user_groups
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD UNIQUE ("user_id", "group_id");

-- ----------------------------
-- Primary Key structure for table auth_user_groups
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_user_permissions
-- ----------------------------
CREATE INDEX "auth_user_user_permissions_8373b171" ON "public"."auth_user_user_permissions" USING btree (permission_id);
CREATE INDEX "auth_user_user_permissions_e8701ad4" ON "public"."auth_user_user_permissions" USING btree (user_id);

-- ----------------------------
-- Uniques structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD UNIQUE ("user_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cliente_cliente
-- ----------------------------
ALTER TABLE "public"."cliente_cliente" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table compra_compra
-- ----------------------------
CREATE INDEX "compra_compra_473dea9e" ON "public"."compra_compra" USING btree (empleado_id);
CREATE INDEX "compra_compra_bb91903a" ON "public"."compra_compra" USING btree (producto_id);

-- ----------------------------
-- Primary Key structure for table compra_compra
-- ----------------------------
ALTER TABLE "public"."compra_compra" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_417f1b1c" ON "public"."django_admin_log" USING btree (content_type_id);
CREATE INDEX "django_admin_log_e8701ad4" ON "public"."django_admin_log" USING btree (user_id);

-- ----------------------------
-- Checks structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CHECK (action_flag >= 0);

-- ----------------------------
-- Primary Key structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table django_migrations
-- ----------------------------
ALTER TABLE "public"."django_migrations" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_de54fa62" ON "public"."django_session" USING btree (expire_date);
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING btree (session_key "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Primary Key structure for table django_session
-- ----------------------------
ALTER TABLE "public"."django_session" ADD PRIMARY KEY ("session_key");

-- ----------------------------
-- Primary Key structure for table empleado_empleado
-- ----------------------------
ALTER TABLE "public"."empleado_empleado" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table inventario_inventario
-- ----------------------------
CREATE INDEX "inventario_inventario_bb91903a" ON "public"."inventario_inventario" USING btree (producto_id);

-- ----------------------------
-- Primary Key structure for table inventario_inventario
-- ----------------------------
ALTER TABLE "public"."inventario_inventario" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table producto_producto
-- ----------------------------
CREATE INDEX "producto_producto_7ac33b97" ON "public"."producto_producto" USING btree (proveedor_id);

-- ----------------------------
-- Primary Key structure for table producto_producto
-- ----------------------------
ALTER TABLE "public"."producto_producto" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table proveedor_proveedor
-- ----------------------------
ALTER TABLE "public"."proveedor_proveedor" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Key structure for table "public"."auth_group_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_permission"
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_user_groups"
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."compra_compra"
-- ----------------------------
ALTER TABLE "public"."compra_compra" ADD FOREIGN KEY ("empleado_id") REFERENCES "public"."empleado_empleado" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."compra_compra" ADD FOREIGN KEY ("producto_id") REFERENCES "public"."producto_producto" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."django_admin_log"
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."inventario_inventario"
-- ----------------------------
ALTER TABLE "public"."inventario_inventario" ADD FOREIGN KEY ("producto_id") REFERENCES "public"."producto_producto" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."producto_producto"
-- ----------------------------
ALTER TABLE "public"."producto_producto" ADD FOREIGN KEY ("proveedor_id") REFERENCES "public"."proveedor_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
