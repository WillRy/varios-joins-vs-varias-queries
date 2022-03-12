<?php

require_once __DIR__."/../config.php";

require_once __DIR__."/../Connect.php";



function listarEnderecos($idUsuarios = []) {
    $inQuery = implode(',', array_fill(0, count($idUsuarios), '?'));
    //$inQuery = ?,?,?,?
    $stmt = Connect::getInstance()->prepare("
        SELECT 
            a.id AS address_id,
            a.name AS address,
            a.user_id
        FROM address as a
        where a.user_id in ({$inQuery})
    ");
    foreach ($idUsuarios as $key => $id) {
        $stmt->bindValue(($key + 1), $id);
    }

    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_OBJ);
}

function listarTelefones($idUsuarios = []) {
    $inQuery = implode(',', array_fill(0, count($idUsuarios), '?'));
    //$inQuery = ?,?,?,?
    $stmt = Connect::getInstance()->prepare("
        SELECT 
           p.id AS phone_id,
           p.number AS phone,
           p.user_id
        FROM phone as p
        where p.user_id in ({$inQuery})
    ");
    foreach ($idUsuarios as $key => $id) {
        $stmt->bindValue(($key + 1), $id);
    }

    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_OBJ);
}

function listarArquivos($idUsuarios = []) {
    $inQuery = implode(',', array_fill(0, count($idUsuarios), '?'));
    //$inQuery = ?,?,?,?
    $stmt = Connect::getInstance()->prepare("
        SELECT 
           f.id AS file_id,
           f.name AS file,
           f.extension,
           f.url,
           f.user_id
        FROM files as f
        where f.user_id in ({$inQuery})
    ");
    foreach ($idUsuarios as $key => $id) {
        $stmt->bindValue(($key + 1), $id);
    }

    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_OBJ);
}

function listar() {
    $stmt = Connect::getInstance()->prepare("
        SELECT 
            u.id,
            u.first_name
        FROM users as u
        LIMIT 10 OFFSET 0
    ");
    $stmt->execute();
    $usuarios = $stmt->fetchAll(PDO::FETCH_OBJ);

    $idUsuarios = array_column($usuarios, 'id');


    /** buscar dados de relacionamentos */
    $enderecosTodosUsuarios = listarEnderecos($idUsuarios);
    $telefonesTodosUsuarios = listarTelefones($idUsuarios);
    $arquivosTodosUsuarios = listarArquivos($idUsuarios);

    /** Normalizar dados duplicados de relacionamentos ( 1 PARA N ) */
    foreach($usuarios as $usuario) {
        $usuario->phones = array_values(array_filter($telefonesTodosUsuarios, function ($item) use ($usuario) {
            return $item->user_id === $usuario->id;
        }));
        $usuario->addresses = array_values(array_filter($enderecosTodosUsuarios, function ($item) use ($usuario) {
            return $item->user_id === $usuario->id;
        }));
        $usuario->files = array_values(array_filter($arquivosTodosUsuarios, function ($item) use ($usuario) {
            return $item->user_id === $usuario->id;
        }));
    }

    return $usuarios;
}

$usuarios = listar();

header('Content-Type: application/json; charset=utf-8');
echo json_encode($usuarios);

