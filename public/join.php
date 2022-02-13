<?php

require_once __DIR__."/../config.php";

require_once __DIR__."/../Connect.php";




function listar() {
    $stmt = Connect::getInstance()->prepare("
        SELECT 
            u.id,
            u.first_name,
            p.id as numero_id,
            p.number as numero,
            a.id as endereco_id,
            a.name as endereco,
            f.id as arquivo_id,
            f.name as arquivo,
            f.extension as extensao,
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

        if (!empty($usuario->numero_id)) {
            $resultados[$usuario->id]["telefones"][$usuario->numero_id] = [
                "numero_id" => $usuario->numero_id,
                "numero" => $usuario->numero,
                "user_id" => $usuario->id
            ];
        }

        if (!empty($usuario->endereco_id)) {
            $resultados[$usuario->id]["enderecos"][$usuario->endereco_id] = [
                "endereco_id" => $usuario->endereco_id,
                "endereco" => $usuario->endereco,
                "user_id" => $usuario->id,
            ];
        }

        if (!empty($usuario->arquivo_id)) {
            $resultados[$usuario->id]["arquivos"][$usuario->arquivo_id] = [
                "arquivo_id" => $usuario->arquivo_id,
                "arquivo" => $usuario->arquivo,
                "extensao" => $usuario->extensao,
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

