<%--
  Created by IntelliJ IDEA.
  User: nzhu
  Date: 2/09/13
  Time: 8:47 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
  2 <!-- The previous line tells the browser, that the page uses the HTML5 standard. -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AM Visualise</title>
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">

    <style type="text/css">
        body {
            /* Set the background color of the HTML page to black */
            background-color: #000000;

            /* Hide oversized content. This prevents the scroll bars. */
            overflow: hidden;
        }
    </style>
    <script type="text/javascript" src="/js/3d/three.min.js"></script>
    <script type="text/javascript" src="/js/3d/Detector.js"></script>
</head>
<body>
    <div id="WebGLCanvas">
    </div>
    <script type="text/javascript">
        var scene;
        var camera;
        var triangleMesh;
        var squareMesh;
        initializeScene();
        animateScene();
        function initializeScene(){
            if(Detector.webgl){
                renderer = new THREE.WebGLRenderer({antialias:true});
            }else {
                renderer = new THREE.CanvasRenderer();
            }
            renderer.setClearColor(0x000000, 1);
            canvasWidth = window.innerWidth;
            canvasHeight = window.innerHeight;
            renderer.setSize(canvasWidth, canvasHeight);
            document.getElementById("WebGLCanvas").appendChild(renderer.domElement);
            scene = new THREE.Scene();
            camera = new THREE.PerspectiveCamera(45, canvasWidth / canvasHeight, 1, 100);
            camera.position.set(0, 0, 10);
            camera.lookAt(scene.position);
            scene.add(camera);
            var triangleGeometry = new THREE.Geometry();
            triangleGeometry.vertices.push(new THREE.Vector3( 0.0,  1.0, 0.0));
            triangleGeometry.vertices.push(new THREE.Vector3(-1.0, -1.0, 0.0));
            triangleGeometry.vertices.push(new THREE.Vector3( 1.0, -1.0, 0.0));
            triangleGeometry.faces.push(new THREE.Face3(0, 1, 2));
            triangleGeometry.faces[0].vertexColors[0] = new THREE.Color(0xFF0000);
            triangleGeometry.faces[0].vertexColors[1] = new THREE.Color(0x00FF00);
            triangleGeometry.faces[0].vertexColors[2] = new THREE.Color(0x0000FF);
            var triangleMaterial = new THREE.MeshBasicMaterial({
                vertexColors:THREE.VertexColors,
                side:THREE.DoubleSide
            } );
            triangleMesh = new THREE.Mesh(triangleGeometry, triangleMaterial);
            triangleMesh.position.set(-1.5, 0.0, 4.0);
            scene.add(triangleMesh);


            var squareGeometry = new THREE.Geometry();
            squareGeometry.vertices.push(new THREE.Vector3(-1.0,  1.0, 0.0));
            squareGeometry.vertices.push(new THREE.Vector3( 1.0,  1.0, 0.0));
            squareGeometry.vertices.push(new THREE.Vector3( 1.0, -1.0, 0.0));
            squareGeometry.vertices.push(new THREE.Vector3(-1.0, -1.0, 0.0));
            squareGeometry.faces.push(new THREE.Face4(0, 1, 2, 3));
            var squareMaterial = new THREE.MeshBasicMaterial({
                color:0xFFFFFF,
                side:THREE.DoubleSide
            });
            squareMesh = new THREE.Mesh(squareGeometry, squareMaterial);
            squareMesh.position.set(1.5, 0.0, 4.0);
            scene.add(squareMesh);
        }
        function animateScene(){
            triangleMesh.rotation.y += 0.1;
            squareMesh.rotation.x -= 0.075;
            requestAnimationFrame(animateScene);
            renderScene();
        }
        function renderScene(){
            renderer.render(scene, camera);
        }
    </script>
</body>
</html>