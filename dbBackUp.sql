PGDMP     3                      {         
   rekrutacja    14.5    14.5     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    33487 
   rekrutacja    DATABASE     f   CREATE DATABASE rekrutacja WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Polish_Poland.1250';
    DROP DATABASE rekrutacja;
                postgres    false            ?            1259    33489    account    TABLE     1  CREATE TABLE public.account (
    id bigint NOT NULL,
    username character varying(50),
    usersurname character varying(50),
    userlogin character varying(50),
    userpassword character varying(200),
    usertel integer,
    usermail character varying(50),
    useraddress character varying(50)
);
    DROP TABLE public.account;
       public         heap    postgres    false            ?            1259    33488    account_id_seq    SEQUENCE     w   CREATE SEQUENCE public.account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.account_id_seq;
       public          postgres    false    210            ?           0    0    account_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.account_id_seq OWNED BY public.account.id;
          public          postgres    false    209            ?            1259    33495    post    TABLE     y   CREATE TABLE public.post (
    id bigint,
    q1 character varying(10),
    q2 character varying(10),
    q3post text
);
    DROP TABLE public.post;
       public         heap    postgres    false            `           2604    33492 
   account id    DEFAULT     h   ALTER TABLE ONLY public.account ALTER COLUMN id SET DEFAULT nextval('public.account_id_seq'::regclass);
 9   ALTER TABLE public.account ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            ?          0    33489    account 
   TABLE DATA           u   COPY public.account (id, username, usersurname, userlogin, userpassword, usertel, usermail, useraddress) FROM stdin;
    public          postgres    false    210   K       ?          0    33495    post 
   TABLE DATA           2   COPY public.post (id, q1, q2, q3post) FROM stdin;
    public          postgres    false    211   ?       ?           0    0    account_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.account_id_seq', 1, true);
          public          postgres    false    209            b           2606    33494    account account_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.account DROP CONSTRAINT account_pkey;
       public            postgres    false    210            c           2606    33500    post fk_key    FK CONSTRAINT     g   ALTER TABLE ONLY public.post
    ADD CONSTRAINT fk_key FOREIGN KEY (id) REFERENCES public.account(id);
 5   ALTER TABLE ONLY public.post DROP CONSTRAINT fk_key;
       public          postgres    false    3170    210    211            ?   z   x?3???M,???<:?3?4/3?(%??S?(I??@%8è?0??2?0/?$?̰?#̬D?? ??;??9?8?ب??,??ܲ 4U/??$?$ĝ????????? j??\??Rΐ???J?=... ?'      ?       x?3???L?I???J-.Q??V?????? P??     