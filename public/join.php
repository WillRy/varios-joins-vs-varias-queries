<?php

require_once __DIR__."/../config.php";

require_once __DIR__."/../Connect.php";




function listar() {
    $stmt = Connect::getInstance()->prepare("
        SELECT 
            u.id,
            u.first_name,
            p.id as phone_id,
            p.number as phone,
            a.id as address_id,
            a.name as address,
            f.id as file_id,
            f.name as file,
            f.extension,
            f.url as url
        fROM (
        SELECT 
            * 
        fROM users as u
        LIMIT 10 OffSET 0) as u
        join address as a on a.user_id = u.id
        join phone as p on p.user_id = u.id
        join files as f on f.user_id = u.id
    ");
    $stmt->execute();
    $usuarios = $stmt->fetchall(PDO::FETCH_OBJ);

    $resultados = [];
    /** Normalizar dados duplicados de relacionamentos ( 1 paRa N ) */
    foreach($usuarios as $usuario) {
        $resultados[$usuario->id]["id"] = $usuario->id;
        $resultados[$usuario->id]["first_name"] = $usuario->first_name;

        if (!empty($usuario->phone_id)) {
            $resultados[$usuario->id]["phones"][$usuario->phone_id] = [
                "phone_id" => $usuario->phone_id,
                "phone" => $usuario->phone,
                "user_id" => $usuario->id
            ];
        }

        if (!empty($usuario->address_id)) {
            $resultados[$usuario->id]["addresses"][$usuario->address_id] = [
                "address_id" => $usuario->address_id,
                "address" => $usuario->address,
                "user_id" => $usuario->id,
            ];
        }

        if (!empty($usuario->file_id)) {
            $resultados[$usuario->id]["files"][$usuario->file_id] = [
                "file_id" => $usuario->file_id,
                "file" => $usuario->file,
                "extension" => $usuario->extension,
                "url" => $usuario->url,
                "user_id" => $usuario->id,
            ];
        }
    }

    return $resultados;
}

$resultados = listar();

header('Content-Type: application/json; charset=utf-8');
echo json_encode($resultados);

