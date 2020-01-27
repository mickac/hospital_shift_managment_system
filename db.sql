--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 12.1

-- Started on 2020-01-27 01:37:56

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 3173 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

--
-- TOC entry 204 (class 1259 OID 16468)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16466)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3174 (class 0 OID 0)
-- Dependencies: 203
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 206 (class 1259 OID 16478)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16476)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3175 (class 0 OID 0)
-- Dependencies: 205
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 202 (class 1259 OID 16460)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16458)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3176 (class 0 OID 0)
-- Dependencies: 201
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 208 (class 1259 OID 16486)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16496)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16494)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3177 (class 0 OID 0)
-- Dependencies: 209
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 207 (class 1259 OID 16484)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3178 (class 0 OID 0)
-- Dependencies: 207
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 212 (class 1259 OID 16504)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16502)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 211
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 214 (class 1259 OID 16564)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16562)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 213
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 200 (class 1259 OID 16450)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16448)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 199
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 198 (class 1259 OID 16439)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16437)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 197
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 215 (class 1259 OID 16595)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16807)
-- Name: lekarze_city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lekarze_city (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.lekarze_city OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16805)
-- Name: lekarze_city_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lekarze_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lekarze_city_id_seq OWNER TO postgres;

--
-- TOC entry 3183 (class 0 OID 0)
-- Dependencies: 234
-- Name: lekarze_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lekarze_city_id_seq OWNED BY public.lekarze_city.id;


--
-- TOC entry 233 (class 1259 OID 16797)
-- Name: lekarze_country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lekarze_country (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.lekarze_country OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16795)
-- Name: lekarze_country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lekarze_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lekarze_country_id_seq OWNER TO postgres;

--
-- TOC entry 3184 (class 0 OID 0)
-- Dependencies: 232
-- Name: lekarze_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lekarze_country_id_seq OWNED BY public.lekarze_country.id;


--
-- TOC entry 219 (class 1259 OID 16615)
-- Name: lekarze_department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lekarze_department (
    id integer NOT NULL,
    name character varying(50),
    hospital_id integer NOT NULL
);


ALTER TABLE public.lekarze_department OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16613)
-- Name: lekarze_department_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lekarze_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lekarze_department_id_seq OWNER TO postgres;

--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 218
-- Name: lekarze_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lekarze_department_id_seq OWNED BY public.lekarze_department.id;


--
-- TOC entry 243 (class 1259 OID 16986)
-- Name: lekarze_exchange; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lekarze_exchange (
    id integer NOT NULL,
    status smallint NOT NULL,
    who_id integer,
    whom_id integer,
    myshift_id integer,
    yourshift_id integer
);


ALTER TABLE public.lekarze_exchange OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16984)
-- Name: lekarze_exchange_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lekarze_exchange_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lekarze_exchange_id_seq OWNER TO postgres;

--
-- TOC entry 3186 (class 0 OID 0)
-- Dependencies: 242
-- Name: lekarze_exchange_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lekarze_exchange_id_seq OWNED BY public.lekarze_exchange.id;


--
-- TOC entry 217 (class 1259 OID 16607)
-- Name: lekarze_hospital; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lekarze_hospital (
    id integer NOT NULL,
    name character varying(50),
    address character varying(50),
    city_id integer NOT NULL
);


ALTER TABLE public.lekarze_hospital OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16605)
-- Name: lekarze_hospital_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lekarze_hospital_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lekarze_hospital_id_seq OWNER TO postgres;

--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 216
-- Name: lekarze_hospital_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lekarze_hospital_id_seq OWNED BY public.lekarze_hospital.id;


--
-- TOC entry 237 (class 1259 OID 16836)
-- Name: lekarze_shift; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lekarze_shift (
    shift_id integer NOT NULL,
    shift_name character varying(255),
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    department_id integer NOT NULL,
    staff_name_id integer NOT NULL,
    shift_type_id integer NOT NULL
);


ALTER TABLE public.lekarze_shift OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16834)
-- Name: lekarze_shift_shift_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lekarze_shift_shift_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lekarze_shift_shift_id_seq OWNER TO postgres;

--
-- TOC entry 3188 (class 0 OID 0)
-- Dependencies: 236
-- Name: lekarze_shift_shift_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lekarze_shift_shift_id_seq OWNED BY public.lekarze_shift.shift_id;


--
-- TOC entry 241 (class 1259 OID 16893)
-- Name: lekarze_shiftcounter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lekarze_shiftcounter (
    id integer NOT NULL,
    date timestamp with time zone,
    counter smallint NOT NULL,
    shift_type_id integer NOT NULL,
    department_id integer
);


ALTER TABLE public.lekarze_shiftcounter OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16891)
-- Name: lekarze_shiftcounter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lekarze_shiftcounter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lekarze_shiftcounter_id_seq OWNER TO postgres;

--
-- TOC entry 3189 (class 0 OID 0)
-- Dependencies: 240
-- Name: lekarze_shiftcounter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lekarze_shiftcounter_id_seq OWNED BY public.lekarze_shiftcounter.id;


--
-- TOC entry 239 (class 1259 OID 16856)
-- Name: lekarze_shifttype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lekarze_shifttype (
    id integer NOT NULL,
    name character varying(50),
    start_date time without time zone,
    end_date time without time zone
);


ALTER TABLE public.lekarze_shifttype OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16854)
-- Name: lekarze_shifttype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lekarze_shifttype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lekarze_shifttype_id_seq OWNER TO postgres;

--
-- TOC entry 3190 (class 0 OID 0)
-- Dependencies: 238
-- Name: lekarze_shifttype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lekarze_shifttype_id_seq OWNED BY public.lekarze_shifttype.id;


--
-- TOC entry 221 (class 1259 OID 16630)
-- Name: schedule_calendar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schedule_calendar (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    slug character varying(200) NOT NULL
);


ALTER TABLE public.schedule_calendar OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16628)
-- Name: schedule_calendar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schedule_calendar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schedule_calendar_id_seq OWNER TO postgres;

--
-- TOC entry 3191 (class 0 OID 0)
-- Dependencies: 220
-- Name: schedule_calendar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schedule_calendar_id_seq OWNED BY public.schedule_calendar.id;


--
-- TOC entry 223 (class 1259 OID 16638)
-- Name: schedule_calendarrelation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schedule_calendarrelation (
    id integer NOT NULL,
    object_id integer NOT NULL,
    distinction character varying(20) NOT NULL,
    inheritable boolean NOT NULL,
    calendar_id integer NOT NULL,
    content_type_id integer NOT NULL
);


ALTER TABLE public.schedule_calendarrelation OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16636)
-- Name: schedule_calendarrelation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schedule_calendarrelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schedule_calendarrelation_id_seq OWNER TO postgres;

--
-- TOC entry 3192 (class 0 OID 0)
-- Dependencies: 222
-- Name: schedule_calendarrelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schedule_calendarrelation_id_seq OWNED BY public.schedule_calendarrelation.id;


--
-- TOC entry 225 (class 1259 OID 16646)
-- Name: schedule_event; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schedule_event (
    id integer NOT NULL,
    start timestamp with time zone NOT NULL,
    "end" timestamp with time zone NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    end_recurring_period timestamp with time zone,
    calendar_id integer NOT NULL,
    creator_id integer,
    rule_id integer,
    color_event character varying(10) NOT NULL
);


ALTER TABLE public.schedule_event OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16644)
-- Name: schedule_event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schedule_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schedule_event_id_seq OWNER TO postgres;

--
-- TOC entry 3193 (class 0 OID 0)
-- Dependencies: 224
-- Name: schedule_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schedule_event_id_seq OWNED BY public.schedule_event.id;


--
-- TOC entry 227 (class 1259 OID 16657)
-- Name: schedule_eventrelation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schedule_eventrelation (
    id integer NOT NULL,
    object_id integer NOT NULL,
    distinction character varying(20) NOT NULL,
    content_type_id integer NOT NULL,
    event_id integer NOT NULL
);


ALTER TABLE public.schedule_eventrelation OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16655)
-- Name: schedule_eventrelation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schedule_eventrelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schedule_eventrelation_id_seq OWNER TO postgres;

--
-- TOC entry 3194 (class 0 OID 0)
-- Dependencies: 226
-- Name: schedule_eventrelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schedule_eventrelation_id_seq OWNED BY public.schedule_eventrelation.id;


--
-- TOC entry 229 (class 1259 OID 16665)
-- Name: schedule_occurrence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schedule_occurrence (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    start timestamp with time zone NOT NULL,
    "end" timestamp with time zone NOT NULL,
    cancelled boolean NOT NULL,
    original_start timestamp with time zone NOT NULL,
    original_end timestamp with time zone NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    event_id integer NOT NULL
);


ALTER TABLE public.schedule_occurrence OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16663)
-- Name: schedule_occurrence_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schedule_occurrence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schedule_occurrence_id_seq OWNER TO postgres;

--
-- TOC entry 3195 (class 0 OID 0)
-- Dependencies: 228
-- Name: schedule_occurrence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schedule_occurrence_id_seq OWNED BY public.schedule_occurrence.id;


--
-- TOC entry 231 (class 1259 OID 16676)
-- Name: schedule_rule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schedule_rule (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    description text NOT NULL,
    frequency character varying(10) NOT NULL,
    params text NOT NULL
);


ALTER TABLE public.schedule_rule OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16674)
-- Name: schedule_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schedule_rule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schedule_rule_id_seq OWNER TO postgres;

--
-- TOC entry 3196 (class 0 OID 0)
-- Dependencies: 230
-- Name: schedule_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schedule_rule_id_seq OWNED BY public.schedule_rule.id;


--
-- TOC entry 2832 (class 2604 OID 16471)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2833 (class 2604 OID 16481)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2831 (class 2604 OID 16463)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2834 (class 2604 OID 16489)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2835 (class 2604 OID 16499)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2836 (class 2604 OID 16507)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2837 (class 2604 OID 16567)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2830 (class 2604 OID 16453)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2829 (class 2604 OID 16442)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2848 (class 2604 OID 16810)
-- Name: lekarze_city id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_city ALTER COLUMN id SET DEFAULT nextval('public.lekarze_city_id_seq'::regclass);


--
-- TOC entry 2847 (class 2604 OID 16800)
-- Name: lekarze_country id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_country ALTER COLUMN id SET DEFAULT nextval('public.lekarze_country_id_seq'::regclass);


--
-- TOC entry 2840 (class 2604 OID 16618)
-- Name: lekarze_department id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_department ALTER COLUMN id SET DEFAULT nextval('public.lekarze_department_id_seq'::regclass);


--
-- TOC entry 2852 (class 2604 OID 16989)
-- Name: lekarze_exchange id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_exchange ALTER COLUMN id SET DEFAULT nextval('public.lekarze_exchange_id_seq'::regclass);


--
-- TOC entry 2839 (class 2604 OID 16610)
-- Name: lekarze_hospital id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_hospital ALTER COLUMN id SET DEFAULT nextval('public.lekarze_hospital_id_seq'::regclass);


--
-- TOC entry 2849 (class 2604 OID 16839)
-- Name: lekarze_shift shift_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_shift ALTER COLUMN shift_id SET DEFAULT nextval('public.lekarze_shift_shift_id_seq'::regclass);


--
-- TOC entry 2851 (class 2604 OID 16896)
-- Name: lekarze_shiftcounter id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_shiftcounter ALTER COLUMN id SET DEFAULT nextval('public.lekarze_shiftcounter_id_seq'::regclass);


--
-- TOC entry 2850 (class 2604 OID 16859)
-- Name: lekarze_shifttype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_shifttype ALTER COLUMN id SET DEFAULT nextval('public.lekarze_shifttype_id_seq'::regclass);


--
-- TOC entry 2841 (class 2604 OID 16633)
-- Name: schedule_calendar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_calendar ALTER COLUMN id SET DEFAULT nextval('public.schedule_calendar_id_seq'::regclass);


--
-- TOC entry 2842 (class 2604 OID 16641)
-- Name: schedule_calendarrelation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_calendarrelation ALTER COLUMN id SET DEFAULT nextval('public.schedule_calendarrelation_id_seq'::regclass);


--
-- TOC entry 2843 (class 2604 OID 16649)
-- Name: schedule_event id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_event ALTER COLUMN id SET DEFAULT nextval('public.schedule_event_id_seq'::regclass);


--
-- TOC entry 2844 (class 2604 OID 16660)
-- Name: schedule_eventrelation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_eventrelation ALTER COLUMN id SET DEFAULT nextval('public.schedule_eventrelation_id_seq'::regclass);


--
-- TOC entry 2845 (class 2604 OID 16668)
-- Name: schedule_occurrence id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_occurrence ALTER COLUMN id SET DEFAULT nextval('public.schedule_occurrence_id_seq'::regclass);


--
-- TOC entry 2846 (class 2604 OID 16679)
-- Name: schedule_rule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_rule ALTER COLUMN id SET DEFAULT nextval('public.schedule_rule_id_seq'::regclass);


--
-- TOC entry 3128 (class 0 OID 16468)
-- Dependencies: 204
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3130 (class 0 OID 16478)
-- Dependencies: 206
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3126 (class 0 OID 16460)
-- Dependencies: 202
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add hospital	7	add_hospital
26	Can change hospital	7	change_hospital
27	Can delete hospital	7	delete_hospital
28	Can view hospital	7	view_hospital
29	Can add department	8	add_department
30	Can change department	8	change_department
31	Can delete department	8	delete_department
32	Can view department	8	view_department
33	Can add calendar	9	add_calendar
34	Can change calendar	9	change_calendar
35	Can delete calendar	9	delete_calendar
36	Can view calendar	9	view_calendar
37	Can add calendar relation	10	add_calendarrelation
38	Can change calendar relation	10	change_calendarrelation
39	Can delete calendar relation	10	delete_calendarrelation
40	Can view calendar relation	10	view_calendarrelation
41	Can add event	11	add_event
42	Can change event	11	change_event
43	Can delete event	11	delete_event
44	Can view event	11	view_event
45	Can add event relation	12	add_eventrelation
46	Can change event relation	12	change_eventrelation
47	Can delete event relation	12	delete_eventrelation
48	Can view event relation	12	view_eventrelation
49	Can add occurrence	13	add_occurrence
50	Can change occurrence	13	change_occurrence
51	Can delete occurrence	13	delete_occurrence
52	Can view occurrence	13	view_occurrence
53	Can add rule	14	add_rule
54	Can change rule	14	change_rule
55	Can delete rule	14	delete_rule
56	Can view rule	14	view_rule
57	Can add country	15	add_country
58	Can change country	15	change_country
59	Can delete country	15	delete_country
60	Can view country	15	view_country
61	Can add city	16	add_city
62	Can change city	16	change_city
63	Can delete city	16	delete_city
64	Can view city	16	view_city
65	Can add shift	17	add_shift
66	Can change shift	17	change_shift
67	Can delete shift	17	delete_shift
68	Can view shift	17	view_shift
69	Can add shift type	18	add_shifttype
70	Can change shift type	18	change_shifttype
71	Can delete shift type	18	delete_shifttype
72	Can view shift type	18	view_shifttype
73	Can add shift counter	19	add_shiftcounter
74	Can change shift counter	19	change_shiftcounter
75	Can delete shift counter	19	delete_shiftcounter
76	Can view shift counter	19	view_shiftcounter
77	Can add exchange	20	add_exchange
78	Can change exchange	20	change_exchange
79	Can delete exchange	20	delete_exchange
80	Can view exchange	20	view_exchange
\.


--
-- TOC entry 3132 (class 0 OID 16486)
-- Dependencies: 208
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
8	pbkdf2_sha256$180000$QSFF0ua9v9tI$TPVUiML7uRw023vrZaxnwIhM4TOecHpq+1cA7Ipw52M=	\N	f	matsta	Mateusz	Starzyk	nieistotny@mail.com	f	t	2020-01-26 16:27:59.68353+01
6	pbkdf2_sha256$180000$g4f1k48BbizB$GS3VfcB8L//SLfZzT6oqfCt7V97KAezRWbJfkTndLdU=	2020-01-26 16:29:01.827084+01	f	matbes	Mateusz	Bess	nieistotny@mail.com	f	t	2020-01-26 16:27:16.096037+01
10	pbkdf2_sha256$180000$ynBI2IquCgZv$PGtDA7xni7vLXfAEaU6pnW5qGI3hk/bvtqo6bRyTyd0=	2020-01-26 16:29:29.252653+01	f	hubryc	Hubert	Rychlicki	nieistotny@mail.com	f	t	2020-01-26 16:28:45.991179+01
7	pbkdf2_sha256$180000$WNlmA0QGAhIA$FMLAN946b1nVHMGxIS1OW5yjQZ8sqPxRVlWGcvNiv4k=	2020-01-26 16:29:53.434036+01	f	jakgie	Jakub	Gierszewski	nieistotny@mail.com	f	t	2020-01-26 16:27:38.046292+01
9	pbkdf2_sha256$180000$4iv1XVGhNtrV$fZlw5RBWwvCrg9gSdZpgEsAGw/31FKldxIzxIWWzZi4=	2020-01-26 16:30:17.325403+01	f	sambyt	Samuel	Bytner	nieistotny@mail.com	f	t	2020-01-26 16:28:17.808567+01
1	pbkdf2_sha256$180000$3jcbfVEXcXBV$6E3N20MtVQEoKzt4vRUjmsMX3/DPgOq3p8602utUd0g=	2020-01-26 19:33:40.639756+01	t	admin	admin	admin		t	t	2020-01-22 16:13:16+01
5	pbkdf2_sha256$180000$dPUYVngPHGoL$n8ojCh3N2vJlfhGgwkljpDWYNHxYrcbhfZbTMJugUrw=	2020-01-26 19:36:31.779545+01	f	mickac	Michał	Kaczyński	kaczynski.mp@gmail.com	f	t	2020-01-26 16:24:47.586543+01
\.


--
-- TOC entry 3134 (class 0 OID 16496)
-- Dependencies: 210
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3136 (class 0 OID 16504)
-- Dependencies: 212
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3138 (class 0 OID 16564)
-- Dependencies: 214
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-01-23 13:14:35.759656+01	30	Michał Kaczyński	3		7	1
2	2020-01-23 13:14:35.767656+01	29	Michał Kaczyński	3		7	1
3	2020-01-23 13:14:35.769656+01	28	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
4	2020-01-23 13:14:35.771656+01	27	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
5	2020-01-23 13:14:35.774656+01	26	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
6	2020-01-23 13:14:35.776657+01	25	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
7	2020-01-23 13:14:35.778657+01	24	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
8	2020-01-23 13:14:35.780657+01	23	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
9	2020-01-23 13:14:35.782657+01	22	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
10	2020-01-23 13:14:35.783657+01	21	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
11	2020-01-23 13:14:35.785657+01	20	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
12	2020-01-23 13:14:35.787657+01	19	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
13	2020-01-23 13:14:35.788657+01	18	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
14	2020-01-23 13:14:35.790657+01	17	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
15	2020-01-23 13:14:35.792658+01	16	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
16	2020-01-23 13:14:35.794658+01	15	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
17	2020-01-23 13:14:35.796658+01	14	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
18	2020-01-23 13:14:35.797658+01	13	Szpital Uniwersytecki im. dr Antoniego Jurasza	3		7	1
19	2020-01-24 01:04:25.078625+01	1	Onkologia	3		8	1
20	2020-01-25 14:10:04.496123+01	1	Test	1	[{"added": {}}]	17	1
21	2020-01-25 16:18:04.844414+01	1	7:00am - 7:00pm	1	[{"added": {}}]	18	1
22	2020-01-25 16:18:32.91602+01	2	7:00pm - 7:00am	1	[{"added": {}}]	18	1
23	2020-01-25 16:18:55.47931+01	3	7:00am - 7:00am	1	[{"added": {}}]	18	1
24	2020-01-25 18:04:19.60903+01	3	7:00am - 7:00am (24h)	2	[{"changed": {"fields": ["Name"]}}]	18	1
25	2020-01-25 18:04:25.846387+01	2	7:00pm - 7:00am (12h)	2	[{"changed": {"fields": ["Name"]}}]	18	1
26	2020-01-25 18:04:31.126689+01	1	7:00am - 7:00pm (12h)	2	[{"changed": {"fields": ["Name"]}}]	18	1
27	2020-01-25 19:34:45.051347+01	1	admin	2	[{"changed": {"fields": ["First name", "Last name"]}}]	4	1
28	2020-01-25 20:13:05.194908+01	19	Test	3		17	1
29	2020-01-25 20:13:05.199908+01	18	test3	3		17	1
30	2020-01-25 20:13:05.201909+01	17	Test	3		17	1
31	2020-01-25 20:13:05.204909+01	16	Test2	3		17	1
32	2020-01-25 20:13:05.207909+01	15	Test	3		17	1
33	2020-01-25 20:35:04.999397+01	25	Test2	3		17	1
34	2020-01-25 20:35:05.008397+01	24	Test	3		17	1
35	2020-01-25 20:35:05.017398+01	23	Test	3		17	1
36	2020-01-25 20:35:05.030398+01	22	Test	3		17	1
37	2020-01-25 20:35:05.045399+01	21	Test	3		17	1
38	2020-01-25 20:35:05.0564+01	20	Test	3		17	1
39	2020-01-25 20:35:33.862047+01	4	2020-01-25 18:00:00+00:00	3		19	1
40	2020-01-25 20:35:33.867048+01	3	2020-01-25 18:00:00+00:00	3		19	1
41	2020-01-25 20:35:33.870048+01	2	2020-01-25 06:00:00+00:00	3		19	1
42	2020-01-25 20:37:38.39617+01	26	Test	3		17	1
43	2020-01-25 20:42:11.784807+01	27	Test	3		17	1
44	2020-01-25 20:42:27.546709+01	5	2020-01-25 06:00:00+00:00	3		19	1
45	2020-01-26 15:41:34.327217+01	9	2020-01-26 06:00:00+00:00	3		19	1
46	2020-01-26 15:41:34.334217+01	8	2020-01-26 06:00:00+00:00	3		19	1
47	2020-01-26 15:41:34.337217+01	7	2020-01-25 06:00:00+00:00	3		19	1
48	2020-01-26 15:41:34.340217+01	6	2020-01-25 06:00:00+00:00	3		19	1
49	2020-01-26 15:41:44.111776+01	31	Test	3		17	1
50	2020-01-26 15:41:44.117777+01	30	Test	3		17	1
51	2020-01-26 15:41:44.120777+01	29	Test	3		17	1
52	2020-01-26 15:41:44.123777+01	28	My Shift	3		17	1
53	2020-01-26 16:01:00.436914+01	1	chuj	3		8	1
54	2020-01-26 16:05:58.239948+01	33	Test	3		17	1
55	2020-01-26 16:05:58.246948+01	32	Test	3		17	1
56	2020-01-26 16:06:07.619484+01	11	2020-01-26 18:00:00+00:00	3		19	1
57	2020-01-26 16:06:07.623484+01	10	2020-01-26 06:00:00+00:00	3		19	1
58	2020-01-26 16:24:37.727979+01	3	matbes	3		4	1
59	2020-01-26 16:24:37.733979+01	2	mickac	3		4	1
\.


--
-- TOC entry 3124 (class 0 OID 16450)
-- Dependencies: 200
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	lekarze	hospital
8	lekarze	department
9	schedule	calendar
10	schedule	calendarrelation
11	schedule	event
12	schedule	eventrelation
13	schedule	occurrence
14	schedule	rule
15	lekarze	country
16	lekarze	city
17	lekarze	shift
18	lekarze	shifttype
19	lekarze	shiftcounter
20	lekarze	exchange
\.


--
-- TOC entry 3122 (class 0 OID 16439)
-- Dependencies: 198
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-01-22 16:11:21.255703+01
2	auth	0001_initial	2020-01-22 16:11:21.406712+01
3	admin	0001_initial	2020-01-22 16:11:21.657726+01
4	admin	0002_logentry_remove_auto_add	2020-01-22 16:11:21.704729+01
5	admin	0003_logentry_add_action_flag_choices	2020-01-22 16:11:21.72173+01
6	contenttypes	0002_remove_content_type_name	2020-01-22 16:11:21.758732+01
7	auth	0002_alter_permission_name_max_length	2020-01-22 16:11:21.768733+01
8	auth	0003_alter_user_email_max_length	2020-01-22 16:11:21.784734+01
9	auth	0004_alter_user_username_opts	2020-01-22 16:11:21.802735+01
10	auth	0005_alter_user_last_login_null	2020-01-22 16:11:21.819736+01
11	auth	0006_require_contenttypes_0002	2020-01-22 16:11:21.822736+01
12	auth	0007_alter_validators_add_error_messages	2020-01-22 16:11:21.839737+01
13	auth	0008_alter_user_username_max_length	2020-01-22 16:11:21.877739+01
14	auth	0009_alter_user_last_name_max_length	2020-01-22 16:11:21.89574+01
15	auth	0010_alter_group_name_max_length	2020-01-22 16:11:21.909741+01
16	auth	0011_update_proxy_permissions	2020-01-22 16:11:21.921742+01
17	sessions	0001_initial	2020-01-22 16:11:21.952743+01
18	lekarze	0001_initial	2020-01-23 12:52:55.778301+01
19	schedule	0001_initial	2020-01-23 14:22:19.203071+01
20	schedule	0002_event_color_event	2020-01-23 14:22:19.36108+01
21	schedule	0003_auto_20160715_0028	2020-01-23 14:22:19.562092+01
22	schedule	0006_update_text_fields_empty_string	2020-01-23 14:22:19.598094+01
23	schedule	0004_text_fields_not_null	2020-01-23 14:22:19.719101+01
24	schedule	0005_verbose_name_plural_for_calendar	2020-01-23 14:22:19.731102+01
25	schedule	0007_merge_text_fields	2020-01-23 14:22:19.735102+01
26	schedule	0008_gfk_index	2020-01-23 14:22:19.889111+01
27	schedule	0009_merge_20180108_2303	2020-01-23 14:22:19.897111+01
28	schedule	0010_events_set_missing_calendar	2020-01-23 14:22:19.923112+01
29	schedule	0011_event_calendar_not_null	2020-01-23 14:22:19.965115+01
30	schedule	0012_auto_20191025_1852	2020-01-23 14:22:20.028118+01
31	lekarze	0002_auto_20200124_0103	2020-01-24 01:11:45.898839+01
32	lekarze	0003_shift	2020-01-25 14:09:08.48392+01
33	lekarze	0004_shifttype	2020-01-25 16:11:27.205671+01
34	lekarze	0005_shift_shift_type	2020-01-25 16:16:01.831378+01
35	lekarze	0006_auto_20200125_1615	2020-01-25 16:16:01.931384+01
36	lekarze	0007_shiftcounter	2020-01-25 20:04:31.159507+01
37	lekarze	0008_shiftcounter_shift_type	2020-01-25 20:07:27.226577+01
38	lekarze	0009_auto_20200125_2020	2020-01-25 20:25:37.624945+01
39	lekarze	0010_shifttype_department	2020-01-26 16:00:36.951571+01
40	lekarze	0011_auto_20200126_1544	2020-01-26 16:00:37.042576+01
41	lekarze	0012_auto_20200126_1554	2020-01-26 16:00:37.090579+01
42	lekarze	0013_remove_shiftcounter_department	2020-01-26 16:00:37.126581+01
43	lekarze	0014_shiftcounter_department	2020-01-26 16:00:37.154583+01
44	lekarze	0015_exchange	2020-01-26 17:07:28.171+01
45	lekarze	0016_auto_20200126_1849	2020-01-26 18:49:13.24619+01
\.


--
-- TOC entry 3139 (class 0 OID 16595)
-- Dependencies: 215
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
c5s7bcbvxo1h9dojhxpsou45ru7n3ikn	Zjk1MTMwODRhOTdjNDA1MjQ2NmQ0YmM4NmFkOWM1MDA1NjMwNGNiMzp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1Njk3ZDgwYWI3MDEyYmQwZjc3YjRkOTkxN2ViNjhkNjBlMzYzZTBmIn0=	2020-02-09 19:36:31.783545+01
\.


--
-- TOC entry 3159 (class 0 OID 16807)
-- Dependencies: 235
-- Data for Name: lekarze_city; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lekarze_city (id, name, country_id) FROM stdin;
1	Bydgoszcz	1
2	Toruń	1
3	Gdańsk	1
\.


--
-- TOC entry 3157 (class 0 OID 16797)
-- Dependencies: 233
-- Data for Name: lekarze_country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lekarze_country (id, name) FROM stdin;
1	Poland
\.


--
-- TOC entry 3143 (class 0 OID 16615)
-- Dependencies: 219
-- Data for Name: lekarze_department; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lekarze_department (id, name, hospital_id) FROM stdin;
3	Onkologia	32
4	Onkologia	33
\.


--
-- TOC entry 3167 (class 0 OID 16986)
-- Dependencies: 243
-- Data for Name: lekarze_exchange; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lekarze_exchange (id, status, who_id, whom_id, myshift_id, yourshift_id) FROM stdin;
1	0	1	5	34	35
2	0	5	10	40	37
\.


--
-- TOC entry 3141 (class 0 OID 16607)
-- Dependencies: 217
-- Data for Name: lekarze_hospital; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lekarze_hospital (id, name, address, city_id) FROM stdin;
32	Jurasz	Marii Curie-Skłodowskiej 9	1
33	Szpital	adres	2
\.


--
-- TOC entry 3161 (class 0 OID 16836)
-- Dependencies: 237
-- Data for Name: lekarze_shift; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lekarze_shift (shift_id, shift_name, start_date, end_date, department_id, staff_name_id, shift_type_id) FROM stdin;
34	Test	2020-01-26 07:00:00+01	2020-01-27 07:00:00+01	3	1	3
35	Test	2020-01-26 07:00:00+01	2020-01-27 07:00:00+01	3	5	3
36	Test	2020-01-26 07:00:00+01	2020-01-27 07:00:00+01	3	6	3
37	Test	2020-01-26 07:00:00+01	2020-01-27 07:00:00+01	3	10	3
38	Test	2020-01-26 07:00:00+01	2020-01-27 07:00:00+01	3	7	3
39	Test	2020-01-26 19:00:00+01	2020-01-27 07:00:00+01	3	9	2
40	My Shift	2020-01-28 19:00:00+01	2020-01-29 07:00:00+01	3	5	2
\.


--
-- TOC entry 3165 (class 0 OID 16893)
-- Dependencies: 241
-- Data for Name: lekarze_shiftcounter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lekarze_shiftcounter (id, date, counter, shift_type_id, department_id) FROM stdin;
12	2020-01-26 07:00:00+01	5	3	3
13	2020-01-26 19:00:00+01	1	2	3
14	2020-01-28 19:00:00+01	1	2	3
\.


--
-- TOC entry 3163 (class 0 OID 16856)
-- Dependencies: 239
-- Data for Name: lekarze_shifttype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lekarze_shifttype (id, name, start_date, end_date) FROM stdin;
3	7:00am - 7:00am (24h)	07:00:00	07:00:00
2	7:00pm - 7:00am (12h)	19:00:00	07:00:00
1	7:00am - 7:00pm (12h)	07:00:00	19:00:00
\.


--
-- TOC entry 3145 (class 0 OID 16630)
-- Dependencies: 221
-- Data for Name: schedule_calendar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schedule_calendar (id, name, slug) FROM stdin;
\.


--
-- TOC entry 3147 (class 0 OID 16638)
-- Dependencies: 223
-- Data for Name: schedule_calendarrelation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schedule_calendarrelation (id, object_id, distinction, inheritable, calendar_id, content_type_id) FROM stdin;
\.


--
-- TOC entry 3149 (class 0 OID 16646)
-- Dependencies: 225
-- Data for Name: schedule_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schedule_event (id, start, "end", title, description, created_on, updated_on, end_recurring_period, calendar_id, creator_id, rule_id, color_event) FROM stdin;
\.


--
-- TOC entry 3151 (class 0 OID 16657)
-- Dependencies: 227
-- Data for Name: schedule_eventrelation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schedule_eventrelation (id, object_id, distinction, content_type_id, event_id) FROM stdin;
\.


--
-- TOC entry 3153 (class 0 OID 16665)
-- Dependencies: 229
-- Data for Name: schedule_occurrence; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schedule_occurrence (id, title, description, start, "end", cancelled, original_start, original_end, created_on, updated_on, event_id) FROM stdin;
\.


--
-- TOC entry 3155 (class 0 OID 16676)
-- Dependencies: 231
-- Data for Name: schedule_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schedule_rule (id, name, description, frequency, params) FROM stdin;
\.


--
-- TOC entry 3197 (class 0 OID 0)
-- Dependencies: 203
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 205
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3199 (class 0 OID 0)
-- Dependencies: 201
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);


--
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 209
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3201 (class 0 OID 0)
-- Dependencies: 207
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 10, true);


--
-- TOC entry 3202 (class 0 OID 0)
-- Dependencies: 211
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3203 (class 0 OID 0)
-- Dependencies: 213
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 59, true);


--
-- TOC entry 3204 (class 0 OID 0)
-- Dependencies: 199
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);


--
-- TOC entry 3205 (class 0 OID 0)
-- Dependencies: 197
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 45, true);


--
-- TOC entry 3206 (class 0 OID 0)
-- Dependencies: 234
-- Name: lekarze_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lekarze_city_id_seq', 3, true);


--
-- TOC entry 3207 (class 0 OID 0)
-- Dependencies: 232
-- Name: lekarze_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lekarze_country_id_seq', 1, true);


--
-- TOC entry 3208 (class 0 OID 0)
-- Dependencies: 218
-- Name: lekarze_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lekarze_department_id_seq', 4, true);


--
-- TOC entry 3209 (class 0 OID 0)
-- Dependencies: 242
-- Name: lekarze_exchange_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lekarze_exchange_id_seq', 2, true);


--
-- TOC entry 3210 (class 0 OID 0)
-- Dependencies: 216
-- Name: lekarze_hospital_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lekarze_hospital_id_seq', 33, true);


--
-- TOC entry 3211 (class 0 OID 0)
-- Dependencies: 236
-- Name: lekarze_shift_shift_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lekarze_shift_shift_id_seq', 40, true);


--
-- TOC entry 3212 (class 0 OID 0)
-- Dependencies: 240
-- Name: lekarze_shiftcounter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lekarze_shiftcounter_id_seq', 14, true);


--
-- TOC entry 3213 (class 0 OID 0)
-- Dependencies: 238
-- Name: lekarze_shifttype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lekarze_shifttype_id_seq', 3, true);


--
-- TOC entry 3214 (class 0 OID 0)
-- Dependencies: 220
-- Name: schedule_calendar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schedule_calendar_id_seq', 1, false);


--
-- TOC entry 3215 (class 0 OID 0)
-- Dependencies: 222
-- Name: schedule_calendarrelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schedule_calendarrelation_id_seq', 1, false);


--
-- TOC entry 3216 (class 0 OID 0)
-- Dependencies: 224
-- Name: schedule_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schedule_event_id_seq', 1, false);


--
-- TOC entry 3217 (class 0 OID 0)
-- Dependencies: 226
-- Name: schedule_eventrelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schedule_eventrelation_id_seq', 1, false);


--
-- TOC entry 3218 (class 0 OID 0)
-- Dependencies: 228
-- Name: schedule_occurrence_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schedule_occurrence_id_seq', 1, false);


--
-- TOC entry 3219 (class 0 OID 0)
-- Dependencies: 230
-- Name: schedule_rule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schedule_rule_id_seq', 1, false);


--
-- TOC entry 2866 (class 2606 OID 16593)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2871 (class 2606 OID 16520)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2874 (class 2606 OID 16483)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2868 (class 2606 OID 16473)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2861 (class 2606 OID 16511)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2863 (class 2606 OID 16465)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2882 (class 2606 OID 16501)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2885 (class 2606 OID 16535)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2876 (class 2606 OID 16491)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2888 (class 2606 OID 16509)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2891 (class 2606 OID 16549)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2879 (class 2606 OID 16587)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2894 (class 2606 OID 16573)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2856 (class 2606 OID 16457)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2858 (class 2606 OID 16455)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2854 (class 2606 OID 16447)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2898 (class 2606 OID 16602)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2948 (class 2606 OID 16814)
-- Name: lekarze_city lekarze_city_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_city
    ADD CONSTRAINT lekarze_city_name_key UNIQUE (name);


--
-- TOC entry 2950 (class 2606 OID 16812)
-- Name: lekarze_city lekarze_city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_city
    ADD CONSTRAINT lekarze_city_pkey PRIMARY KEY (id);


--
-- TOC entry 2942 (class 2606 OID 16804)
-- Name: lekarze_country lekarze_country_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_country
    ADD CONSTRAINT lekarze_country_name_key UNIQUE (name);


--
-- TOC entry 2944 (class 2606 OID 16802)
-- Name: lekarze_country lekarze_country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_country
    ADD CONSTRAINT lekarze_country_pkey PRIMARY KEY (id);


--
-- TOC entry 2905 (class 2606 OID 16620)
-- Name: lekarze_department lekarze_department_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_department
    ADD CONSTRAINT lekarze_department_pkey PRIMARY KEY (id);


--
-- TOC entry 2967 (class 2606 OID 16991)
-- Name: lekarze_exchange lekarze_exchange_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_exchange
    ADD CONSTRAINT lekarze_exchange_pkey PRIMARY KEY (id);


--
-- TOC entry 2902 (class 2606 OID 16612)
-- Name: lekarze_hospital lekarze_hospital_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_hospital
    ADD CONSTRAINT lekarze_hospital_pkey PRIMARY KEY (id);


--
-- TOC entry 2953 (class 2606 OID 16841)
-- Name: lekarze_shift lekarze_shift_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_shift
    ADD CONSTRAINT lekarze_shift_pkey PRIMARY KEY (shift_id);


--
-- TOC entry 2963 (class 2606 OID 16898)
-- Name: lekarze_shiftcounter lekarze_shiftcounter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_shiftcounter
    ADD CONSTRAINT lekarze_shiftcounter_pkey PRIMARY KEY (id);


--
-- TOC entry 2958 (class 2606 OID 16863)
-- Name: lekarze_shifttype lekarze_shifttype_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_shifttype
    ADD CONSTRAINT lekarze_shifttype_name_key UNIQUE (name);


--
-- TOC entry 2960 (class 2606 OID 16861)
-- Name: lekarze_shifttype lekarze_shifttype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_shifttype
    ADD CONSTRAINT lekarze_shifttype_pkey PRIMARY KEY (id);


--
-- TOC entry 2907 (class 2606 OID 16635)
-- Name: schedule_calendar schedule_calendar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_calendar
    ADD CONSTRAINT schedule_calendar_pkey PRIMARY KEY (id);


--
-- TOC entry 2910 (class 2606 OID 16754)
-- Name: schedule_calendar schedule_calendar_slug_ba17e861_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_calendar
    ADD CONSTRAINT schedule_calendar_slug_ba17e861_uniq UNIQUE (slug);


--
-- TOC entry 2916 (class 2606 OID 16643)
-- Name: schedule_calendarrelation schedule_calendarrelation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_calendarrelation
    ADD CONSTRAINT schedule_calendarrelation_pkey PRIMARY KEY (id);


--
-- TOC entry 2922 (class 2606 OID 16654)
-- Name: schedule_event schedule_event_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_event
    ADD CONSTRAINT schedule_event_pkey PRIMARY KEY (id);


--
-- TOC entry 2931 (class 2606 OID 16662)
-- Name: schedule_eventrelation schedule_eventrelation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_eventrelation
    ADD CONSTRAINT schedule_eventrelation_pkey PRIMARY KEY (id);


--
-- TOC entry 2935 (class 2606 OID 16673)
-- Name: schedule_occurrence schedule_occurrence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_occurrence
    ADD CONSTRAINT schedule_occurrence_pkey PRIMARY KEY (id);


--
-- TOC entry 2939 (class 2606 OID 16684)
-- Name: schedule_rule schedule_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_rule
    ADD CONSTRAINT schedule_rule_pkey PRIMARY KEY (id);


--
-- TOC entry 2864 (class 1259 OID 16594)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2869 (class 1259 OID 16531)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2872 (class 1259 OID 16532)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2859 (class 1259 OID 16517)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2880 (class 1259 OID 16547)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2883 (class 1259 OID 16546)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2886 (class 1259 OID 16561)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2889 (class 1259 OID 16560)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2877 (class 1259 OID 16588)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2892 (class 1259 OID 16584)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2895 (class 1259 OID 16585)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2896 (class 1259 OID 16604)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2899 (class 1259 OID 16603)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2945 (class 1259 OID 16833)
-- Name: lekarze_city_country_id_774a8bb4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_city_country_id_774a8bb4 ON public.lekarze_city USING btree (country_id);


--
-- TOC entry 2946 (class 1259 OID 16832)
-- Name: lekarze_city_name_9fb3a5ba_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_city_name_9fb3a5ba_like ON public.lekarze_city USING btree (name varchar_pattern_ops);


--
-- TOC entry 2940 (class 1259 OID 16826)
-- Name: lekarze_country_name_4650b837_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_country_name_4650b837_like ON public.lekarze_country USING btree (name varchar_pattern_ops);


--
-- TOC entry 2903 (class 1259 OID 16626)
-- Name: lekarze_department_hospital_id_52d6ff47; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_department_hospital_id_52d6ff47 ON public.lekarze_department USING btree (hospital_id);


--
-- TOC entry 2965 (class 1259 OID 17020)
-- Name: lekarze_exchange_myshift_id_54e80b6b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_exchange_myshift_id_54e80b6b ON public.lekarze_exchange USING btree (myshift_id);


--
-- TOC entry 2968 (class 1259 OID 17008)
-- Name: lekarze_exchange_who_id_b218e731; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_exchange_who_id_b218e731 ON public.lekarze_exchange USING btree (who_id);


--
-- TOC entry 2969 (class 1259 OID 17009)
-- Name: lekarze_exchange_whom_id_202f5a7a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_exchange_whom_id_202f5a7a ON public.lekarze_exchange USING btree (whom_id);


--
-- TOC entry 2970 (class 1259 OID 17021)
-- Name: lekarze_exchange_yourshift_id_b844b66f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_exchange_yourshift_id_b844b66f ON public.lekarze_exchange USING btree (yourshift_id);


--
-- TOC entry 2900 (class 1259 OID 16820)
-- Name: lekarze_hospital_city_id_2341f248; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_hospital_city_id_2341f248 ON public.lekarze_hospital USING btree (city_id);


--
-- TOC entry 2951 (class 1259 OID 16852)
-- Name: lekarze_shift_department_id_62561e0d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_shift_department_id_62561e0d ON public.lekarze_shift USING btree (department_id);


--
-- TOC entry 2954 (class 1259 OID 16878)
-- Name: lekarze_shift_shift_type_id_8ceb1261; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_shift_shift_type_id_8ceb1261 ON public.lekarze_shift USING btree (shift_type_id);


--
-- TOC entry 2955 (class 1259 OID 16853)
-- Name: lekarze_shift_staff_name_id_fb063ee2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_shift_staff_name_id_fb063ee2 ON public.lekarze_shift USING btree (staff_name_id);


--
-- TOC entry 2961 (class 1259 OID 16983)
-- Name: lekarze_shiftcounter_department_id_094d2b8d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_shiftcounter_department_id_094d2b8d ON public.lekarze_shiftcounter USING btree (department_id);


--
-- TOC entry 2964 (class 1259 OID 16905)
-- Name: lekarze_shiftcounter_shift_Type_id_dade3f97; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "lekarze_shiftcounter_shift_Type_id_dade3f97" ON public.lekarze_shiftcounter USING btree (shift_type_id);


--
-- TOC entry 2956 (class 1259 OID 16864)
-- Name: lekarze_shifttype_name_d96f8060_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lekarze_shifttype_name_d96f8060_like ON public.lekarze_shifttype USING btree (name varchar_pattern_ops);


--
-- TOC entry 2908 (class 1259 OID 16755)
-- Name: schedule_calendar_slug_ba17e861_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_calendar_slug_ba17e861_like ON public.schedule_calendar USING btree (slug varchar_pattern_ops);


--
-- TOC entry 2911 (class 1259 OID 16751)
-- Name: schedule_calendarrelatio_content_type_id_object_i_3378a516_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_calendarrelatio_content_type_id_object_i_3378a516_idx ON public.schedule_calendarrelation USING btree (content_type_id, object_id);


--
-- TOC entry 2912 (class 1259 OID 16702)
-- Name: schedule_calendarrelation_calendar_id_0a50be2e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_calendarrelation_calendar_id_0a50be2e ON public.schedule_calendarrelation USING btree (calendar_id);


--
-- TOC entry 2913 (class 1259 OID 16703)
-- Name: schedule_calendarrelation_content_type_id_f2a42f5b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_calendarrelation_content_type_id_f2a42f5b ON public.schedule_calendarrelation USING btree (content_type_id);


--
-- TOC entry 2914 (class 1259 OID 16749)
-- Name: schedule_calendarrelation_object_id_1743bce6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_calendarrelation_object_id_1743bce6 ON public.schedule_calendarrelation USING btree (object_id);


--
-- TOC entry 2917 (class 1259 OID 16714)
-- Name: schedule_event_calendar_id_eb1c700f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_event_calendar_id_eb1c700f ON public.schedule_event USING btree (calendar_id);


--
-- TOC entry 2918 (class 1259 OID 16715)
-- Name: schedule_event_creator_id_d2ffab6e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_event_creator_id_d2ffab6e ON public.schedule_event USING btree (creator_id);


--
-- TOC entry 2919 (class 1259 OID 16735)
-- Name: schedule_event_end_674c5848; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_event_end_674c5848 ON public.schedule_event USING btree ("end");


--
-- TOC entry 2920 (class 1259 OID 16736)
-- Name: schedule_event_end_recurring_period_672addcf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_event_end_recurring_period_672addcf ON public.schedule_event USING btree (end_recurring_period);


--
-- TOC entry 2923 (class 1259 OID 16734)
-- Name: schedule_event_rule_id_90b83d31; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_event_rule_id_90b83d31 ON public.schedule_event USING btree (rule_id);


--
-- TOC entry 2924 (class 1259 OID 16737)
-- Name: schedule_event_start_a11492a7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_event_start_a11492a7 ON public.schedule_event USING btree (start);


--
-- TOC entry 2925 (class 1259 OID 16740)
-- Name: schedule_event_start_end_89f30672_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_event_start_end_89f30672_idx ON public.schedule_event USING btree (start, "end");


--
-- TOC entry 2926 (class 1259 OID 16726)
-- Name: schedule_eventrelation_content_type_id_d4187723; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_eventrelation_content_type_id_d4187723 ON public.schedule_eventrelation USING btree (content_type_id);


--
-- TOC entry 2927 (class 1259 OID 16752)
-- Name: schedule_eventrelation_content_type_id_object_id_c1b1e893_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_eventrelation_content_type_id_object_id_c1b1e893_idx ON public.schedule_eventrelation USING btree (content_type_id, object_id);


--
-- TOC entry 2928 (class 1259 OID 16727)
-- Name: schedule_eventrelation_event_id_8c57a7b4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_eventrelation_event_id_8c57a7b4 ON public.schedule_eventrelation USING btree (event_id);


--
-- TOC entry 2929 (class 1259 OID 16750)
-- Name: schedule_eventrelation_object_id_e22334a2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_eventrelation_object_id_e22334a2 ON public.schedule_eventrelation USING btree (object_id);


--
-- TOC entry 2932 (class 1259 OID 16738)
-- Name: schedule_occurrence_end_ae255624; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_occurrence_end_ae255624 ON public.schedule_occurrence USING btree ("end");


--
-- TOC entry 2933 (class 1259 OID 16733)
-- Name: schedule_occurrence_event_id_ade47cd8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_occurrence_event_id_ade47cd8 ON public.schedule_occurrence USING btree (event_id);


--
-- TOC entry 2936 (class 1259 OID 16739)
-- Name: schedule_occurrence_start_b28eeb2f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_occurrence_start_b28eeb2f ON public.schedule_occurrence USING btree (start);


--
-- TOC entry 2937 (class 1259 OID 16741)
-- Name: schedule_occurrence_start_end_5fc98870_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schedule_occurrence_start_end_5fc98870_idx ON public.schedule_occurrence USING btree (start, "end");


--
-- TOC entry 2973 (class 2606 OID 16526)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2972 (class 2606 OID 16521)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2971 (class 2606 OID 16512)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2975 (class 2606 OID 16541)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2974 (class 2606 OID 16536)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2977 (class 2606 OID 16555)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2976 (class 2606 OID 16550)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2978 (class 2606 OID 16574)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2979 (class 2606 OID 16579)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2990 (class 2606 OID 16827)
-- Name: lekarze_city lekarze_city_country_id_774a8bb4_fk_lekarze_country_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_city
    ADD CONSTRAINT lekarze_city_country_id_774a8bb4_fk_lekarze_country_id FOREIGN KEY (country_id) REFERENCES public.lekarze_country(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2981 (class 2606 OID 16621)
-- Name: lekarze_department lekarze_department_hospital_id_52d6ff47_fk_lekarze_hospital_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_department
    ADD CONSTRAINT lekarze_department_hospital_id_52d6ff47_fk_lekarze_hospital_id FOREIGN KEY (hospital_id) REFERENCES public.lekarze_hospital(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2998 (class 2606 OID 17010)
-- Name: lekarze_exchange lekarze_exchange_myshift_id_54e80b6b_fk_lekarze_shift_shift_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_exchange
    ADD CONSTRAINT lekarze_exchange_myshift_id_54e80b6b_fk_lekarze_shift_shift_id FOREIGN KEY (myshift_id) REFERENCES public.lekarze_shift(shift_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2996 (class 2606 OID 16997)
-- Name: lekarze_exchange lekarze_exchange_who_id_b218e731_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_exchange
    ADD CONSTRAINT lekarze_exchange_who_id_b218e731_fk_auth_user_id FOREIGN KEY (who_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2997 (class 2606 OID 17002)
-- Name: lekarze_exchange lekarze_exchange_whom_id_202f5a7a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_exchange
    ADD CONSTRAINT lekarze_exchange_whom_id_202f5a7a_fk_auth_user_id FOREIGN KEY (whom_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2999 (class 2606 OID 17015)
-- Name: lekarze_exchange lekarze_exchange_yourshift_id_b844b66f_fk_lekarze_s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_exchange
    ADD CONSTRAINT lekarze_exchange_yourshift_id_b844b66f_fk_lekarze_s FOREIGN KEY (yourshift_id) REFERENCES public.lekarze_shift(shift_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2980 (class 2606 OID 16821)
-- Name: lekarze_hospital lekarze_hospital_city_id_2341f248_fk_lekarze_city_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_hospital
    ADD CONSTRAINT lekarze_hospital_city_id_2341f248_fk_lekarze_city_id FOREIGN KEY (city_id) REFERENCES public.lekarze_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2991 (class 2606 OID 16842)
-- Name: lekarze_shift lekarze_shift_department_id_62561e0d_fk_lekarze_department_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_shift
    ADD CONSTRAINT lekarze_shift_department_id_62561e0d_fk_lekarze_department_id FOREIGN KEY (department_id) REFERENCES public.lekarze_department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2993 (class 2606 OID 16873)
-- Name: lekarze_shift lekarze_shift_shift_type_id_8ceb1261_fk_lekarze_shifttype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_shift
    ADD CONSTRAINT lekarze_shift_shift_type_id_8ceb1261_fk_lekarze_shifttype_id FOREIGN KEY (shift_type_id) REFERENCES public.lekarze_shifttype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2992 (class 2606 OID 16847)
-- Name: lekarze_shift lekarze_shift_staff_name_id_fb063ee2_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_shift
    ADD CONSTRAINT lekarze_shift_staff_name_id_fb063ee2_fk_auth_user_id FOREIGN KEY (staff_name_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2995 (class 2606 OID 16978)
-- Name: lekarze_shiftcounter lekarze_shiftcounter_department_id_094d2b8d_fk_lekarze_d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_shiftcounter
    ADD CONSTRAINT lekarze_shiftcounter_department_id_094d2b8d_fk_lekarze_d FOREIGN KEY (department_id) REFERENCES public.lekarze_department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2994 (class 2606 OID 16906)
-- Name: lekarze_shiftcounter lekarze_shiftcounter_shift_type_id_5c9c1da3_fk_lekarze_s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lekarze_shiftcounter
    ADD CONSTRAINT lekarze_shiftcounter_shift_type_id_5c9c1da3_fk_lekarze_s FOREIGN KEY (shift_type_id) REFERENCES public.lekarze_shifttype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2982 (class 2606 OID 16692)
-- Name: schedule_calendarrelation schedule_calendarrel_calendar_id_0a50be2e_fk_schedule_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_calendarrelation
    ADD CONSTRAINT schedule_calendarrel_calendar_id_0a50be2e_fk_schedule_ FOREIGN KEY (calendar_id) REFERENCES public.schedule_calendar(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2983 (class 2606 OID 16697)
-- Name: schedule_calendarrelation schedule_calendarrel_content_type_id_f2a42f5b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_calendarrelation
    ADD CONSTRAINT schedule_calendarrel_content_type_id_f2a42f5b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2984 (class 2606 OID 16756)
-- Name: schedule_event schedule_event_calendar_id_eb1c700f_fk_schedule_calendar_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_event
    ADD CONSTRAINT schedule_event_calendar_id_eb1c700f_fk_schedule_calendar_id FOREIGN KEY (calendar_id) REFERENCES public.schedule_calendar(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2985 (class 2606 OID 16761)
-- Name: schedule_event schedule_event_creator_id_d2ffab6e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_event
    ADD CONSTRAINT schedule_event_creator_id_d2ffab6e_fk_auth_user_id FOREIGN KEY (creator_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2986 (class 2606 OID 16766)
-- Name: schedule_event schedule_event_rule_id_90b83d31_fk_schedule_rule_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_event
    ADD CONSTRAINT schedule_event_rule_id_90b83d31_fk_schedule_rule_id FOREIGN KEY (rule_id) REFERENCES public.schedule_rule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2987 (class 2606 OID 16716)
-- Name: schedule_eventrelation schedule_eventrelati_content_type_id_d4187723_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_eventrelation
    ADD CONSTRAINT schedule_eventrelati_content_type_id_d4187723_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2988 (class 2606 OID 16721)
-- Name: schedule_eventrelation schedule_eventrelation_event_id_8c57a7b4_fk_schedule_event_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_eventrelation
    ADD CONSTRAINT schedule_eventrelation_event_id_8c57a7b4_fk_schedule_event_id FOREIGN KEY (event_id) REFERENCES public.schedule_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2989 (class 2606 OID 16728)
-- Name: schedule_occurrence schedule_occurrence_event_id_ade47cd8_fk_schedule_event_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule_occurrence
    ADD CONSTRAINT schedule_occurrence_event_id_ade47cd8_fk_schedule_event_id FOREIGN KEY (event_id) REFERENCES public.schedule_event(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-01-27 01:37:57

--
-- PostgreSQL database dump complete
--

